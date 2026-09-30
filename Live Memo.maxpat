{
  "patcher": {
    "appversion": {
      "major": 8,
      "revision": 2,
      "minor": 1,
      "modernui": 1,
      "architecture": "x64"
    },
    "openrect": [
      0,
      0,
      260,
      169
    ],
    "boxes": [
      {
        "box": {
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_type": 3,
              "parameter_longname": "Memo",
              "parameter_initial_enable": 0,
              "parameter_shortname": "Memo",
              "parameter_invisible": 1
            }
          },
          "autoscroll": 1,
          "valuemode": 0,
          "fontname": "Yu Gothic UI",
          "border": 1.0,
          "textcolor": [
            0.94,
            0.94,
            0.92,
            1
          ],
          "bgcolor": [
            0.16,
            0.17,
            0.18,
            1
          ],
          "varname": "Memo",
          "bordercolor": [
            0.36,
            0.38,
            0.4,
            1
          ],
          "patching_rect": [
            10,
            30,
            240,
            130
          ],
          "text": "",
          "presentation_rect": [
            8,
            26,
            244,
            133
          ],
          "parameter_mappable": 0,
          "rounded": 4.0,
          "maxclass": "textedit",
          "wordwrap": 1,
          "outlettype": [
            "",
            "",
            ""
          ],
          "numinlets": 1,
          "fontsize": 13.0,
          "numoutlets": 3,
          "id": "memo",
          "presentation": 1,
          "parameter_enable": 1,
          "tabmode": 1,
          "keymode": 0,
          "outputmode": 1
        }
      },
      {
        "box": {
          "numoutlets": 0,
          "text": "MEMO",
          "fontface": 1,
          "fontname": "Arial",
          "id": "title",
          "presentation_rect": [
            8,
            4,
            244,
            20
          ],
          "fontsize": 11.0,
          "presentation": 1,
          "numinlets": 1,
          "patching_rect": [
            10,
            5,
            240,
            20
          ],
          "maxclass": "comment",
          "textcolor": [
            0.75,
            0.78,
            0.8,
            1
          ]
        }
      },
      {
        "box": {
          "text": "plugin~",
          "patching_rect": [
            20,
            220,
            60,
            22
          ],
          "id": "in",
          "maxclass": "newobj",
          "outlettype": [
            "signal",
            "signal"
          ],
          "numinlets": 2,
          "numoutlets": 2
        }
      },
      {
        "box": {
          "text": "plugout~",
          "patching_rect": [
            20,
            290,
            60,
            22
          ],
          "id": "out",
          "maxclass": "newobj",
          "outlettype": [
            "signal",
            "signal"
          ],
          "numinlets": 2,
          "numoutlets": 2
        }
      }
    ],
    "default_fontsize": 12.0,
    "lines": [
      {
        "patchline": {
          "destination": [
            "out",
            0
          ],
          "source": [
            "in",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "out",
            1
          ],
          "source": [
            "in",
            1
          ]
        }
      }
    ],
    "dependency_cache": [],
    "fileversion": 1,
    "default_fontname": "Arial",
    "parameters": {
      "parameterbanks": {},
      "memo": [
        "Memo",
        "Memo",
        0
      ],
      "inherited_shortname": 1
    },
    "bgcolor": [
      0.12,
      0.13,
      0.14,
      1
    ],
    "autosave": 0,
    "openinpresentation": 1,
    "devicewidth": 260.0,
    "rect": [
      100,
      100,
      440,
      350
    ],
    "classnamespace": "box",
    "latency": 0
  }
}