import ch.qos.logback.classic.encoder.PatternLayoutEncoder
import ch.qos.logback.core.ConsoleAppender
import java.nio.charset.Charset


println "CUSTOM LOGGING"

def appenderList = ["CONSOLE"]
appender("CONSOLE", ConsoleAppender) {
    encoder(PatternLayoutEncoder) {
        charset = Charset.forName("UTF-8")
        pattern = "%-4relative %d %-5level [ %t ] %-55logger{13} | %m %n"
    }
}

root(TRACE, appenderList)
