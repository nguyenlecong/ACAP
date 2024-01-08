#include <syslog.h>

#define APP_PACKAGE "video_streaming"

int main(int argc, char **argv)
{
    openlog(APP_PACKAGE, LOG_PID | LOG_CONS, LOG_USER);

    syslog(LOG_INFO, "Start Streaming!");

    closelog();

    return 0;
}