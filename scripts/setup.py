from argparse import ArgumentParser
from enum import Enum
from os import path, remove, symlink
from typing import Final

FILES: Final[list[str]] = [
    "~/.config/alacritty",
    "~/.config/libskk",
    "~/.config/sheldon",
    "~/.config/sway",
    "~/.config/waybar",
    "~/.vim",
    "~/.zshrc",
]


class Colors(Enum):
    Reset = "\033[0m"
    Bold = "\033[1m"
    Green = "\033[32m"

    def __str__(self) -> str:
        return self.value


class Subcommands(Enum):
    Install = "install"
    Uninstall = "uninstall"

    def __str__(self) -> str:
        return self.value


class Options:
    def __init__(self, quiet: bool, pretend: bool) -> None:
        self.quiet = quiet
        self.pretend = pretend

        return None


def create_symlinks(files: list[str], options: Options) -> None:
    for file in files:
        original: str = path.abspath(path.basename(file))
        link: str = path.abspath(path.expanduser(file))

        if not options.pretend:
            symlink(original, link)

        if options.pretend or not options.quiet:
            print(
                f"{Colors.Green}{Colors.Bold}Created{Colors.Reset} symlink {original} -> {link}"
            )

    return None


def remove_symlinks(files: list[str], options: Options) -> None:
    for file in files:
        target: str = path.abspath(path.expanduser(file))

        if not options.pretend:
            remove(target)

        if options.pretend or not options.quiet:
            print(f"{Colors.Green}{Colors.Bold}Removed{Colors.Reset} symlink {target}")

    return None


def parse_arguments(files: list[str]) -> None:
    parser = ArgumentParser(description="Install dotfiles")

    parser.add_argument("actions", type=Subcommands, choices=list(Subcommands))
    parser.add_argument(
        "-q",
        "--quiet",
        action="store_true",
        help="Do not print log messages",
    )
    parser.add_argument(
        "-p",
        "--pretend",
        action="store_true",
        help="Print what it would install but not actually change anything",
    )

    arguments = parser.parse_args()

    options = Options(arguments.quiet, arguments.pretend)

    match arguments.actions:
        case Subcommands.Install:
            create_symlinks(files, options)
        case Subcommands.Uninstall:
            remove_symlinks(files, options)

    return None


def main():
    parse_arguments(FILES)


if __name__ == "__main__":
    main()
