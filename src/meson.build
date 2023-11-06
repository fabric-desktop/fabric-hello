sources = files(
  'main.vala',
)

executable(
  meson.project_name(),
  sources,
  dependencies: dependencies,
  c_args: [
    '-include', 'config.h'
  ],
  install: true,
)
