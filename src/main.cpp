#include <QApplication>
#include "ui/AppStyle.h"
#include "ui/MainWindow.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    app.setOrganizationName("OfflineDict");
    app.setApplicationName("Offline Dictionary");

    AppStyle::apply(app);
    MainWindow window;
    window.show();

    return app.exec();
}
