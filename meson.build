project('com.github.ChaboCode.Timepaper', 'vala', 'c')

subdir('src')

dependencies =  [
    dependency('gtk+-3.0'),
    dependency('granite')
]

executable(
    meson.project_name(),
    'src/Main.vala',
    sources,
    dependencies: dependencies,
    install: true
)
