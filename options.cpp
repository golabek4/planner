#include "options.h"
#include <QDebug>
#include <string>

OptionsNE::OptionsNE() {
    QFile settings("options.txt");
    if(!settings.exists("options.txt")){
        settings.open(QIODevice::ReadWrite);
        settings.write("notification: false\nearnings: 0");
        settings.close();
    }
}

bool OptionsNE::isNotificationChecked() {
    QFile settings("options.txt");
    settings.open(QIODevice::ReadOnly);
    QTextStream setting(&settings);
    while(!setting.atEnd()){
        QString notification = setting.readLine();
        auto isTrue = notification.split("notification: ", Qt::SkipEmptyParts);
        if(isTrue[0] == "true") {
            settings.close();
            return true;
        } else {
            settings.close();
            return false;
        }
    }
    return false;
}

float OptionsNE::getEarnings() {
    QFile settings("options.txt");
    settings.open(QIODevice::ReadOnly);
    QTextStream setting(&settings);
    QStringList earning;
    while(!setting.atEnd()){
        QString earnings = setting.readLine();
        earning = earnings.split(" ", Qt::SkipEmptyParts);
    }
    return earning[1].toFloat();
}

void OptionsNE::setOnNotification() {
    QFile settings("options.txt");
    settings.open(QIODevice::ReadWrite);
    std::string text;
    text = "notification: true\nearnings: " + QString::number(getEarnings()).toStdString();;
    settings.write(text.c_str());
    settings.close();
}

void OptionsNE::setOffNotification() {
    QFile settings("options.txt");
    settings.open(QIODevice::ReadWrite);
    std::string text;
    text = "notification: false\nearnings: " + QString::number(getEarnings()).toStdString();;
    settings.write(text.c_str());
    settings.close();
}

void OptionsNE::setEarnigs(QString earnings) {
    QFile settings("options.txt");
    settings.open(QIODevice::WriteOnly);
    QTextStream setting(&settings);
    std::string text;
    if(isNotificationChecked()){
        text = "notification: true\nearnings: " + earnings.toStdString();
    } else {
        text = "notification: false\nearnings: " + earnings.toStdString();
    }
    settings.write(text.c_str());
    settings.close();
}
