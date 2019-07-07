//
//  AboutViewModel.swift
//  MDeckMembership001
//
//  Created by Dheeraj on 20/06/19.
//  Copyright © 2019 Dheeraj. All rights reserved.
//

import Foundation

struct AboutViewModel {
    
    let titleArer = ["Company Name :" : "SS Company",
                     "E-mail Address :": "ss@company.com",
                     "Address :" : "Liberty Island New York City, New York, U.S.",
                     "Telephone Number :" : "1234567890",
                     "Web Site Address :" : "www.ss.com",
                     "About Us :" : "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum."]
    func getAboutData() -> [AboutModel] {
        var aboutdata = [AboutModel]()
        for data in titleArer{
            let modelData = AboutModel(title: data.key, desc: data.value)
            aboutdata.append(modelData)
        }
        return aboutdata
    }
}
