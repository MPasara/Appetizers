//
//  AccountView.swift
//  Appetizers
//
//  Created by Mladen Pašara on 24.06.2025..
//

import SwiftUI

struct AccountView: View {
    @StateObject var viewModel = AccountViewModel()
    @FocusState private var focusedField: Field?

    enum Field: Hashable {
        case firstName
        case lastName
        case email
    }

    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Personal info")) {
                    TextField("First name", text: $viewModel.user.firstName)
                        .focused($focusedField, equals: .firstName)
                    TextField("Last name", text: $viewModel.user.lastName)
                        .focused($focusedField, equals: .lastName)
                    TextField("Email", text: $viewModel.user.email)
                        .focused($focusedField, equals: .email)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled(true)
                    DatePicker(
                        "Birthday", selection: $viewModel.user.birthdate,
                        displayedComponents: .date)
                    Button("Save Changes") {
                        viewModel.saveChanges()
                        focusedField = nil
                    }
                }
                Section(header: Text("Requests")) {
                    Toggle("Extra napkins", isOn: $viewModel.user.extraNapkins)
                    Toggle(
                        "Frequent refills",
                        isOn: $viewModel.user.frequentRefills)
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
            }
            .navigationTitle("⚙ Account")
        }
        .onAppear {
            viewModel.retrieveUser()
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(
                title: alertItem.title, message: alertItem.message,
                dismissButton: alertItem.dismissButton
            )
        }
    }
}

#Preview {
    AccountView()
}
