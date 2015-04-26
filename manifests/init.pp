stage { "prepare":
  before => Stage["main"],
}

class setup {
  exec { "update-aptitude":
    command => "/usr/bin/apt-get update -y",
  }
}

class docker {
  exec { "install-docker":
    command => "/usr/bin/wget -qO- https://get.docker.com/ | sh",
  }
}

class {
  "setup":
    stage => prepare;
  "docker":;
  "golang":;
}
