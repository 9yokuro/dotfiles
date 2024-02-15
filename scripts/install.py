#!/usr/bin/env python3


from argparse import ArgumentParser
from enum import Enum
from json import load
from os import path, remove, symlink


class Actions(Enum):
    Install = "install"
    Uninstall = "uninstall"

    def __str__(self) -> str:
        return self.value


def parse_args(path: str) -> None:
    parser = ArgumentParser(description="Install dotfiles.")
    parser.add_argument("actions", type=Actions, choices=list(Actions))
    parser.add_argument("-q", "--quiet", action="store_true", help="Do not print log messages.")
    parser.add_argument("-p", "--pretend", action="store_true", help="Print what it would install but not actually change anything.")
    args = parser.parse_args()

    files: list[str] = read_settings(path)["paths"]

    match args.actions:
        case Actions.Install:
            create_symlinks(files, args.quiet, args.pretend)
        case Actions.Uninstall:
            delete_symlinks(files, args.quiet, args.pretend)


def read_settings(path: str) -> dict[str, list[str]]:
    with open(path) as f:
        return load(f)


def create_symlinks(files: list[str], quiet: bool, pretend: bool) -> None:
    for i in files:
        if not pretend:
            symlink(path.abspath(path.basename(i)), path.abspath(path.expanduser(i)))
        if pretend or not quiet:
            print(f"\033[32m\033[1mCreated\033[0m symlink {path.basename(i)} -> {i}")


def delete_symlinks(files: list[str], quiet: bool, pretend: bool) -> None:
    for i in files:
        if not pretend:
            remove(path.abspath(i))
        if pretend or not quiet:
            print(f"\033[32m\033[1mDeleted\033[0m symlink {i}")


def main():
    parse_args("settings.json")


if __name__ == "__main__":
    main()
