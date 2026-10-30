# FreeHorizon

> Форк AI-ассистента и qwin.

FreeHorizon — Minecraft: Java Edition 26.3, переписанный на Rust. Работает без лицензии (офлайн-режим), берёт файлы игры из вашей установки Minecraft.

## Скачать

- [Последний релиз](https://github.com/QWIIn337/FreeHorizon/releases/tag/v1.0.0) — выберите архив для вашей ОС (Linux, Windows, macOS).
- Распакуйте и запустите `run.sh` (Linux/macOS) или `run.bat` (Windows).

## Быстрый старт (офлайн)

1. Установите Minecraft Java Edition (официальный лаунчер, Prism, ElyPrism и др.) и запустите версию 26.3 один раз.
2. Запустите FreeHorizon: `./run.sh` (Linux/macOS) или `run.bat` (Windows).
3. В лаунчере: **Settings → Minecraft folder** → выберите папку с игрой (автопоиск работает).
4. На странице **Play** нажмите **Prepare** (From my install), затем **Play**.
5. Игра запустится с офлайн-именем, без Microsoft-аккаунта.

## Запуск из исходников

```sh
cd launcher
cargo build --release
./run.sh
```

## Примечание

FreeHorizon не содержит игровых файлов Mojang. Они берутся из вашей установки Minecraft. Лицензия не требуется.

## Документация

- [Исходный проект Horizon](https://github.com/horizon-rust/horizon)
- [Команды лаунчера](docs/launcher-commands.md)
