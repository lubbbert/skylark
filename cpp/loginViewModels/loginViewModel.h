#pragma once

#include <QObject>
#include <QTimer>
#include <QString>
#include <QQmlEngine>

class LoginViewModel : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool isBusy READ isBusy NOTIFY busyChanged)
    Q_PROPERTY(bool loginError READ loginError NOTIFY loginErrorChanged)
    Q_PROPERTY(bool loginOk READ loginOk NOTIFY loginOkChanged)
    Q_PROPERTY(QString user READ user NOTIFY userChanged)
public:
    explicit LoginViewModel(QObject *parent = nullptr);

    Q_INVOKABLE void checkLogin(const QString& user, const QString& pass);

    static void registerSingletonMe(const std::string& moduleName);

    bool isBusy() const;
    void setIsBusy(bool isBusy);

    bool loginError() const;
    void setLoginError(bool loginError);

    bool loginOk() const;
    void setLoginOk(bool loginOk);

    QString user() const;
    void setUser(const QString &user);

signals:
    void busyChanged();
    void loginErrorChanged();
    void loginOkChanged();
    void userChanged();

public slots:
    static QObject *singletonProvider(QQmlEngine *engine, QJSEngine *scriptEngine);

private slots:
    void timerSlot();

private:
    bool m_isBusy = false;
    bool m_loginError = false;
    bool m_loginOk = false;
    QString m_user = "";

    QTimer *timer;
};

