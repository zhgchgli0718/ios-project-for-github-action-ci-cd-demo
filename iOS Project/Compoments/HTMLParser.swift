//
//  HTMLParser.swift
//  iOS Project
//
//  Created by zhgchgli on 2024/12/13.
//

import Foundation
import ZMarkupParser

class HTMLParser {
    static func parse(_ html: String) -> NSAttributedString {
        ZHTMLParserBuilder.initWithDefault().build().render(html)
    }
}
