#ifndef OPTIONS_H
#define OPTIONS_H

#include <QObject>
#include <QWidget>
#include <QFile>
#include <QDebug>

class OptionsNE : public QObject
{
    Q_OBJECT

public:
    OptionsNE();
    bool isNotificationChecked(); // Checking that user allowed to notification
    float getEarnings();
    void setOnNotification(); // When user first time clicked to turn on notification
    void setOffNotification(); // When user first time clicked to turn off notification
    void setEarnigs(QString earnings);
};

#endif // OPTIONS_H
