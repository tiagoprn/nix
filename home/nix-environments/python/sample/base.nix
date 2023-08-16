# Based on https://nixos.org/manual/nixpkgs/stable/#python , section "How to consume Python modules using pip in a virtual environment like I am used to on other Operating Systems?"

let
  pkgs = import <nixpkgs> { };
  python_version = pkgs.python38Full;
  pythonPackages = python_version.pkgs;
in pkgs.mkShell rec {
  name = "impurePythonEnv";
  venvDir = "./.venv";
  buildInputs = [
    # A Python interpreter including the 'venv' module is required to bootstrap
    # the environment.
    python_version

    # This executes some shell code to initialize a venv in $venvDir before
    # dropping into the shell
    pythonPackages.venvShellHook

    # Those are dependencies that we would like to use from nixpkgs, which will
    # add them to PYTHONPATH and thus make them accessible from within the venv.
    # pythonPackages.numpy
    # pythonPackages.requests

    # In this particular example, in order to compile any binary extensions they may
    # require, the Python modules listed in the hypothetical requirements.txt need
    # the following packages to be installed locally:
    pkgs.stdenv.cc.cc.lib
    pkgs.taglib
    pkgs.openssl
    pkgs.git
    pkgs.libxml2
    pkgs.libxslt
    pkgs.libzip
    pkgs.gcc
    pkgs.gcc.cc.lib
    pkgs.libunistring
    pkgs.libidn2
    pkgs.bash
    pkgs.tzdata
    pkgs.zlib
    pkgs.zlib.dev
    pkgs.readline
    pkgs.readline.dev
    pkgs.bzip2
    pkgs.bzip2.dev
    pkgs.ncurses
    pkgs.ncurses.dev
    pkgs.sqlite
    pkgs.sqlite.dev
    pkgs.openssl
    pkgs.openssl.dev
    pkgs.libuuid
    pkgs.libuuid.dev
    pkgs.gdbm
    pkgs.lzlib
    pkgs.tk
    pkgs.tk.dev
    pkgs.libffi
    pkgs.libffi.dev
    pkgs.expat
    pkgs.expat.dev
    pkgs.mailcap
    pkgs.xz
    pkgs.xz.dev
  ];

  # Run this command, only after creating the virtual environment
  postVenvCreation = ''
    unset SOURCE_DATE_EPOCH
    export LD_LIBRARY_PATH="${pkgs.zlib}/lib:$LD_LIBRARY_PATH"
    pip install -r requirements.txt
  '';

  # shellHook = ''
  #   export LD_LIBRARY_PATH="${pkgs.zlib}/lib:$LD_LIBRARY_PATH"
  # '';

  # Now we can execute any commands within the virtual environment.
  # This is optional and can be left out to run pip manually.
  postShellHook = ''
    # allow pip to install wheels
    unset SOURCE_DATE_EPOCH
    export LD_LIBRARY_PATH="${pkgs.gcc.cc.lib}/lib:${pkgs.zlib}/lib:$LD_LIBRARY_PATH"
  '';

}
