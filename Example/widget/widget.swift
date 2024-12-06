//
//  widget.swift
//  widget
//
//  Created by LESLIEHAN on 2024/2/22.
//

import WidgetKit
import SwiftUI
import QWeather

struct Provider: TimelineProvider {
    
    init() {
        guard let config = AllWeatherInquieirs.sharedInstance() else {
             return
        }
        // TODO: add your 'publicID' and 'appKey'
        // config.publicID = "xxx";
        // config.appKey   = "xxx";
        config.lang     = "zh"
        config.unit     = "m"
        config.appType  = .BIZ
    }
    
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), emoji: "😀")
    }

    func getSnapshot(in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date(), emoji: "😀")
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = SimpleEntry(date: entryDate, emoji: "😀")
            entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        
        AllWeatherInquieirs.sharedInstance().location = "101010100"
        AllWeatherInquieirs.sharedInstance().weather(withInquireType: .WEATHER_AIR_NOW) { result in
            if let object = result as? AirBaseClass {
                print(object.debugDescription)
            }
            completion(timeline)
        } faileureForError: { error in
            if let error {
                print(error.localizedDescription)
            }
            completion(timeline)
        }
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let emoji: String
}

struct widgetEntryView : View {
    var entry: Provider.Entry

    var body: some View {
        VStack {
            Text("Time:")
            Text(entry.date, style: .time)

            Text("Emoji:")
            Text(entry.emoji)
        }
    }
}

struct widget: Widget {
    let kind: String = "widget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            if #available(iOS 17.0, *) {
                widgetEntryView(entry: entry)
                    .containerBackground(.fill.tertiary, for: .widget)
            } else {
                widgetEntryView(entry: entry)
                    .padding()
                    .background()
            }
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
    }
}

#Preview(as: .systemSmall) {
    widget()
} timeline: {
    SimpleEntry(date: .now, emoji: "😀")
    SimpleEntry(date: .now, emoji: "🤩")
}
