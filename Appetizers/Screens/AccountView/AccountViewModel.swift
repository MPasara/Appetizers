//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Mladen Pašara on 05.07.2025..
//

import SwiftUI

final class AccountViewModel: ObservableObject {

    @AppStorage("user") private var userData: Data?
    @Published var user = User()
    @Published var alertItem: AlertItem?

    var isValidForm: Bool {
        guard !user.firstName.isEmpty, !user.lastName.isEmpty,
            !user.email.isEmpty
        else {
            alertItem = AlertContext.formNotValid
            return false
        }

        guard user.email.isValid else {
            alertItem = AlertContext.invalidEmail
            return false
        }

        return true
    }

    func saveChanges() {
        guard isValidForm else { return }

        do {
            let data = try JSONEncoder().encode(user)
            userData = data
            alertItem = AlertContext.userSaveSuccess
        } catch {
            alertItem = AlertContext.invalidUserData
        }
    }

    func retrieveUser() {
        guard let userData = userData else { return }

        do {
            user = try JSONDecoder().decode(User.self, from: userData)
        } catch {
            alertItem = AlertContext.invalidUserData
        }
    }
}
