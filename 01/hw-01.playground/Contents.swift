import Foundation
class DiaryRecord
{
    init()
    {
        createdAt = Date() //sets current date
    }
    
    init(createdAt:Date){
        self.createdAt = createdAt
    }
    
    private (set) var createdAt: Date
    var name: String?{
        didSet{
            print("DiaryRecord. Setting name: \(name!)")
        }
    }
    var text: String?{
        didSet{
            print("DiaryRecord. Setting text: \(text!)")
        }
    }
    var tags: [String]=[]{
        didSet{
             print("DiaryRecord. Setting tags: \(tags)")
        }
    }
    
    func description() -> String{
        return "\(createdAt)\n\n\(name ?? "") \(tags)\n\n\(text ?? "")"
    }
}

var diaryRecord1 = DiaryRecord()
diaryRecord1.name = "iOS. HW 01"
diaryRecord1.text = "Unstoppable joy"
diaryRecord1.tags = ["iOS", "LITS"]
diaryRecord1.tags.append("Swift")



var diaryRecord2 = DiaryRecord(createdAt:Date(timeIntervalSince1970: -50))
var diaryRecord3 = DiaryRecord()


print(diaryRecord1.description())
print(diaryRecord2.description())
print(diaryRecord3.description())
