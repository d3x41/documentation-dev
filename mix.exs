defmodule KaisenDocumentation.MixProject do
  use Mix.Project

  def project do
    [
      app: :kaisen_documentation,
      version: "2.1.0",
      elixir: "~> 1.13.4",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # Docs
      name: "Documentation",
      homepage_url: "https://kaisenlinux.org/documentation/",
      authors: "Arnaud Cormier & Kevin Chevreuil",
      docs: [
        main: "md/documentation",
        api_reference: false,
        logo: "priv/assets/kaisen-logo.jpg",
        assets: "priv/assets",
        before_closing_head_tag: &docs_before_closing_head_tag/1,
        formatters: ["html"],
        extra_section: "Guides",
        extras: [
          "md/documentation.md": [ title: "Kaisen Linux | Documentation"],
          "md/start/links.md": [ title: "Official Kaisen Linux links"],
          "md/start/why.md": [ title: "Why use Kaisen Linux ?"],
          "md/start/variant.md": [title: "List of the differents ISO"],
          "md/start/usb.md": [ title: "USB creation"],
          "md/start/hardware.md": [ title: "Hardware requirements"],
          "md/start/live.md": [ title: "Live informations"],
          "md/start/netinst.md": [ title: "NETINST informations"],
          "md/start/install.md": [ title: "Install OS"],
          "md/start/virtualisation.md": [ title: "Using Virtualisation"],
          "md/start/menu.md": [ title: "Menu and Tools overview"],
          "md/tools/tools.md": [ title: "Tools"],
          "md/tools/packages.md": [ title: "Packages"],
          "md/tools/metapackages.md": [ title: "Metapackages"],
          "md/tutorials/Windows-bootable-USB-key.md": [ title: "Windows bootable USB key"],
          "md/tutorials/Bad-sectors-analyses.md": [ title: "Bad sectors analyses"],
          "md/tutorials/grub-repair.md": [ title: "Repair GRUB"],
          "md/tutorials/terminal-shortcuts.md": [ title: "Kaisen Terminal shortcuts"],
          "md/tutorials/advanced-btrfs-utilisation.md": [ title: "Advanced BTRFS utilisation"],
          "md/tutorials/create-chroot.md": [ title: "Create chroot"],
          "md/infos/licence.md": [ title: "Kaisen Linux licence"],
          "md/infos/download.md": [ title: "Kaisen Linux downloads"],
          "md/infos/repo.md": [ title: "Kaisen Linux repositories"],
          "md/infos/update.md": [ title: "Kaisen Linux updates"],
	  "md/goodies/kaisen-conky.md": [ title: "Kaisen Conky"],
	  "md/goodies/zsh.md": [ title: "ZSH"],
	  "md/goodies/cryptsetup-nuke-password.md": [ title: "Cryptsetup nuke password"],
          "md/faq/faq.md": [title: "Frequently asked Questions" ]

        ],
        groups_for_extras: [
          "START": Path.wildcard("md/start/*.md"),
          "TOOLS & PACKAGES": Path.wildcard("md/tools/*.md"),
          "INFOS": Path.wildcard("md/infos/*.md"),
	  "GOODIES": Path.wildcard("md/goodies/*.md"),
          "TUTORIALS": Path.wildcard("md/tutorials/*.md"),
          "FAQ": Path.wildcard("md/faq/faq.md")
          # only one file is read for faq category

        ],

      ],
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.26", only: :dev, runtime: false},
    ]
  end

  # adding custom stylesheet
  defp docs_before_closing_head_tag(:html) do
    ~s{<link rel="stylesheet" href="assets/doc.css">}
  end
  defp docs_before_closing_head_tag(_), do: ""
end
