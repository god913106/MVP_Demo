//
//  Presenter.swift
//  MVP_Demo
//
//  Created by 洋蔥胖 on 2019/1/23.
//  Copyright © 2019 ChrisYoung. All rights reserved.
//

import Foundation

// 給View使用
protocol GreetingView {
    func setGreeting(greeting: String)
    
}

// 給Presenter使用
protocol GreetingViewPresenter {
    init(view: GreetingView, person:Person)
    func showGreeting()
}


class GreetingPresenter: GreetingViewPresenter {
    
    let view : GreetingView
    let person: Person
    
    // GreetingViewPresenter 代理
    required init(view: GreetingView, person: Person) {
        self.view = view
        self.person = person
    }
    
    func showGreeting() {
        self.view.setGreeting(greeting: "Hi! \(self.person.firstName) \(self.person.lastName)")
    }
}


