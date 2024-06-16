import {
  ActionArguments,
  ActionFlags,
  BaseConfig,
} from "https://deno.land/x/ddu_vim@v4.1.0/types.ts";
import { Params as FfParams } from "https://deno.land/x/ddu_ui_ff@v1.1.0/ff.ts";
import { Params as FilerParams } from "https://deno.land/x/ddu_ui_filer@v1.1.0/filer.ts";

export class Config extends BaseConfig {
  override config(args: ConfigArguments): Promise<void> {
    args.contextBuilder.patchGlobal({
      ui: "ff",
      uiOptions: {
        filer: {
          toggle: true,
        },
      },
      uiParams: {
        ff: {
          autoAction: {
            name: "preview",
          },
          maxHighlightItems: 50,
          previewSplit: "vertical",
          prompt: "> ",
          startAutoAction: true,
        } as Partial<FfParams>,
        filer: {
          sort: "filename",
          sortTreesFirst: true,
          toggle: true,
        } as Params<FilerParams>,
      },
      sourceOptions: {
        _: {
          ignoreCase: true,
          matchers: ["matcher_substring"],
          smartCase: true,
        },
        file_rec: {
          matchers: ["matcher_substring"],
          converters: ["converter_hl_dir"],
        },
        file: {
          matchers: ["matcher_substring"],
          sorters: ["sorter_alpha"],
          converters: ["converter_hl_dir"],
        },
      },
      filterParams: {
        matcher_substring: {
          highlightMatched: "Search",
        },
        converter_hl_dir: {
          hlGroup: [
            "Directory",
            "Keyword",
          ],
        },
      },
      kindOptions: {
        file: {
          defaultAction: "open",
        },
      },
    });

    return Promise.resolve();
  }
}
