 
import 'dart:convert';

Targets targetsFromJson(String str) => Targets.fromJson(json.decode(str));

String targetsToJson(Targets data) => json.encode(data.toJson());

class Targets {
    Targets({
        this.status,
        this.message,
        this.data,
    });

    int status;
    String message;
    Data data;

    factory Targets.fromJson(Map<String, dynamic> json) => Targets(
        status: json["status"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data.toJson(),
    };
}

class Data {
    Data({
        this.filter,
        this.header,
        this.reports,
    });

    Filter filter;
    Header header;
    Reports reports;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        filter: Filter.fromJson(json["filter"]),
        header: Header.fromJson(json["header"]),
        reports: Reports.fromJson(json["reports"]),
    );

    Map<String, dynamic> toJson() => {
        "filter": filter.toJson(),
        "header": header.toJson(),
        "reports": reports.toJson(),
    };
}

class Filter {
    Filter({
        this.channel,
        this.date,
        this.to,
    });

    List<String> channel;
    DateTime date;
    DateTime to;

    factory Filter.fromJson(Map<String, dynamic> json) => Filter(
        channel: List<String>.from(json["channel"].map((x) => x)),
        date: DateTime.parse(json["date"]),
        to: DateTime.parse(json["to"]),
    );

    Map<String, dynamic> toJson() => {
        "channel": List<dynamic>.from(channel.map((x) => x)),
        "date": "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "to": "${to.year.toString().padLeft(4, '0')}-${to.month.toString().padLeft(2, '0')}-${to.day.toString().padLeft(2, '0')}",
    };
}

class Header {
    Header({
        this.title,
        this.userName,
        this.division,
        this.channel,
        this.upTo,
    });

    String title;
    String userName;
    String division;
    String channel;
    String upTo;

    factory Header.fromJson(Map<String, dynamic> json) => Header(
        title: json["title"],
        userName: json["user_name"],
        division: json["division"],
        channel: json["channel"],
        upTo: json["up_to"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "user_name": userName,
        "division": division,
        "channel": channel,
        "up_to": upTo,
    };
}

class Reports {
    Reports({
        this.targets,
        this.forecastVsAchievement,
        this.forecast,
    });

    TargetsClass targets;
    Forecast forecastVsAchievement;
    Forecast forecast;

    factory Reports.fromJson(Map<String, dynamic> json) => Reports(
        targets: TargetsClass.fromJson(json["targets"]),
        forecastVsAchievement: Forecast.fromJson(json["forecast_vs_achievement"]),
        forecast: Forecast.fromJson(json["forecast"]),
    );

    Map<String, dynamic> toJson() => {
        "targets": targets.toJson(),
        "forecast_vs_achievement": forecastVsAchievement.toJson(),
        "forecast": forecast.toJson(),
    };
}

class Forecast {
    Forecast({
        this.title,
        this.columns,
        this.rows,
        this.total,
    });

    String title;
    List<String> columns;
    List<List<dynamic>> rows;
    List<dynamic> total;

    factory Forecast.fromJson(Map<String, dynamic> json) => Forecast(
        title: json["title"],
        columns: List<String>.from(json["columns"].map((x) => x)),
        rows: List<List<dynamic>>.from(json["rows"].map((x) => List<dynamic>.from(x.map((x) => x)))),
        total: List<dynamic>.from(json["total"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "columns": List<dynamic>.from(columns.map((x) => x)),
        "rows": List<dynamic>.from(rows.map((x) => List<dynamic>.from(x.map((x) => x)))),
        "total": List<dynamic>.from(total.map((x) => x)),
    };
}

class TargetsClass {
    TargetsClass({
        this.title,
        this.columns,
        this.rows,
    });

    String title;
    List<String> columns;
    List<List<dynamic>> rows;

    factory TargetsClass.fromJson(Map<String, dynamic> json) => TargetsClass(
        title: json["title"],
        columns: List<String>.from(json["columns"].map((x) => x)),
        rows: List<List<dynamic>>.from(json["rows"].map((x) => List<dynamic>.from(x.map((x) => x)))),
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "columns": List<dynamic>.from(columns.map((x) => x)),
        "rows": List<dynamic>.from(rows.map((x) => List<dynamic>.from(x.map((x) => x)))),
    };
}
