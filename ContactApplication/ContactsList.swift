//
//  ContactsList.swift
//  ContactApplication
//
//


import Foundation

class ContactsList{
    var allContacts = [Contacts]()
    init(){
        let firstName = ["Amy","Sara", "John"]
        let lastName = ["Smith","Fisher", "Doe"]
        let phoneNumber = ["3654402624","9842035766", "1234567890"]
        let email = ["xyz.com", "abc.com", "koki.com"]
        
        let names_with_index = firstName.enumerated()
                for (index,_) in names_with_index {
                    allContacts.append(Contacts(firstName: firstName[index], lastName: lastName[index], phoneNumber: phoneNumber[index], email: email[index]))
                }
    }
    
    func deleteContact(index: Int){
        allContacts.remove(at: index)
    }
    func moveContact(from fromIndex: Int, to toIndex: Int){
        let temp = allContacts[fromIndex]
        allContacts.remove(at: fromIndex)
        allContacts.insert(temp, at:toIndex)
    }
    
    @discardableResult func createContact(firstName:String, lastName:String,phoneNumber:String, email: String) -> Contacts {
        let contact = Contacts(firstName: firstName, lastName: lastName, phoneNumber: phoneNumber, email: email )
        allContacts.append(contact)
        return contact
    }
    
}
