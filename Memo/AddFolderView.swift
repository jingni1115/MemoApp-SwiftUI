//
//  AddFolderView.swift
//  Memo
//
//  Created by 김지은 on 2022/11/15.
//

import SwiftUI

struct AddFolderView: View {
    @Binding var showAddFolderView: Bool
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var modelData: ModelData
    
    @State var folderName: String = "새로운 폴더"
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    TextField("새로운 폴더", text: $folderName)
                        .padding(.horizontal)
                        .frame(height: 55)
                        .background(.white)
                        .cornerRadius(10)
                    
                    Button {
                        
                    } label: {
                        Text("qq")
                    }
                }
                .padding(14)
                .navigationBarTitle("새로운 폴더", displayMode: .inline)
                .toolbar {
                    ToolbarItem(placement: .primaryAction) {
                        Button("완료") {
                            modelData.addFolder(folder: folderName)
                            dismiss()
                        }
                        .foregroundColor(.yellow)
                    }
                    ToolbarItem(placement: .cancellationAction) {
                        Button("취소") {
                            dismiss()
                        }
                        .foregroundColor(.yellow)
                    }
                }
            }
            .background(Color(uiColor: .secondarySystemBackground))
        }
    }
    
    private func dismiss() {
        presentationMode.wrappedValue.dismiss()
    }
}