import PerfectPython
import PerfectMarkdown
import PerfectSMTP
import PerfectSysInfo

public struct sw4test {
  public var text = "#Hello, World!".markdownToHTML ?? "FAULT"
  public var version: String {
    return PyObj.Version ?? "UNKNOWN"
  } 
  public var email: EMail? {
    return EMail(client: SMTPClient(url: "smtps://smtp.gmail.com", username: "rockywei524@gmail.com", password:"Luak@8167"))
  }
  public var cpu: [String: [String: Int]]? {
    return SysInfo.CPU
  }
}