defmodule KaisenDocumentation.MixProject do
  use Mix.Project

  def project do
    [
      app: :kaisen_documentation,
      version: "2.2.2",
      elixir: "~> 1.14.3",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # Docs
      name: "Documentation",
      homepage_url: "https://kaisenlinux.org/documentation/",
      authors: "Arnaud Cormier & Kevin Chevreuil",
      docs: [
        main: "documentation",
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
	  "md/tutorials/gns3-utilization.md": [ title: "GNS3 utilization"],
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
          "md/tips-and-tricks/How-to-build-custom-ISO.md": [ title: "How to build custom ISO?"],
          "md/tips-and-tricks/How-to-change-graphical-interface.md": [ title: "How to change graphical interface?"],
          "md/tips-and-tricks/How-to-change-login-wallpaper.md": [ title: "How to change login wallpaper?"],
          "md/tips-and-tricks/How-to-reapply-the-GUI-default-profile.md": [ title: "How to reapply the GUI default profile?"],
          "md/tips-and-tricks/How-to-switch-to-root-directly-with-zsh.md": [ title: "How to switch to root directly with ZSH?"],
          "md/tips-and-tricks/Informations-on-rolling-version.md": [ title: "Informations on rolling version"],
          "md/tips-and-tricks/Update-Kaisen-Linux-Rolling.md": [ title: "Update Kaisen Linux Rolling"],
          "md/tips-and-tricks/What-are-the-revisions-of-the-rolling-version.md": [ title: "What are the revisions of the rolling version?"],
          "md/tips-and-tricks/Where-can-I-find-documentation-on-the-built-in-tools-or-how-certain-settings-work.md": [ title: "Where can I find documentation on the built in tools or how certain settings work?"],
          "md/tips-and-tricks/Where-can-I-find-more-documentation.md": [ title: "Where can I find more documentation?"],
          "md/tips-and-tricks/Why-are-all-additional-services-disabled-by-default.md": [ title: "Why are all additional services disabled by default?"],
          "md/tips-and-tricks/Why-create-user-accounts-only-on-home.md": [ title: "Why create user accounts only on home?"],
          "md/tips-and-tricks/Why-KDE-installed-with-lightdm-by-default.md": [ title: "Why KDE installed with lightdm by default?"],
          "md/tips-and-tricks/Why-no-source-on-some-packages.md": [ title: "Why no source on some packages?"],
          "md/tips-and-tricks/Why-root-account-is-disabled.md": [ title: "Why root account is disabled?"],
          


        ],
        groups_for_extras: [
          "START": Path.wildcard("md/start/*.md"),
          "TOOLS & PACKAGES": Path.wildcard("md/tools/*.md"),
          "INFOS": Path.wildcard("md/infos/*.md"),
	        "GOODIES": Path.wildcard("md/goodies/*.md"),
          "TUTORIALS": Path.wildcard("md/tutorials/*.md"),
          "TIPS AND TRICKS": Path.wildcard("md/tips-and-tricks/*.md")
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
      {:ex_doc, "~> 0.29.1", only: :dev, runtime: false},
    ]
  end

  # adding custom stylesheet
  defp docs_before_closing_head_tag(:html) do
    ~s{<link rel="stylesheet" href="assets/doc.css">}
  end
  defp docs_before_closing_head_tag(_), do: ""
end
