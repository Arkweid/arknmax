[![Build Status](https://api.travis-ci.org/Arkweid/arknmax.svg?branch=master)](https://travis-ci.org/palkan/wsdirector)
[![Coverage Status](https://coveralls.io/repos/github/Arkweid/arknmax/badge.svg?branch=master)](https://coveralls.io/github/Arkweid/arknmax?branch=master)

# Arknmax

This is a simple realisation of nmax function

## Installation

    $ gem install arknmax

## Usage

    $ cat bigfile.txt | arknmax 10

## Описание задачи

Напишите скрипт nmax, который делает следующее:
- читает из входящего потока текстовые данные;
- по завершении ввода выводит n самых больших целых чисел, встретившихся в полученных текстовых данных.
Дополнительные указания:
- числом считается любая непрерывная последовательность цифр в тексте;
- известно, что чисел длиннее 1000 цифр во входных данных нет;
- число n должно быть единственным параметром скрипта;
- код должен быть покрыт тестами;
- код должен быть оформлен в виде гема (содержащего исполняемый файл, код модулей и т.д.).
