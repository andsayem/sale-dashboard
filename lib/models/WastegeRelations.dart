// To parse this JSON data, do
//
//     final wastegeRelations = wastegeRelationsFromJson(jsonString);

import 'dart:convert';

List<WastegeRelations> wastegeRelationsFromJson(String str) => List<WastegeRelations>.from(json.decode(str).map((x) => WastegeRelations.fromJson(x)));

String wastegeRelationsToJson(List<WastegeRelations> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class WastegeRelations {
    WastegeRelations({
          this.id,
          this.plantId,
          this.summaryGroupId,
          this.wastageSummaryGroupId,
          this.productId,
          this.createdBy,
          this.createdAt,
          this.updatedBy,
          this.updatedAt,
          this.deletedAt,
    });

    int id;
    int plantId;
    int summaryGroupId;
    int wastageSummaryGroupId;
    int productId;
    int createdBy;
    DateTime createdAt;
    int updatedBy;
    DateTime updatedAt;
    dynamic deletedAt;

    factory WastegeRelations.fromJson(Map<String, dynamic> json) => WastegeRelations(
      

        id: json["id"],
        plantId: json["plant_id"],
        summaryGroupId: json["summary_group_id"],
        wastageSummaryGroupId: json["wastage_summary_group_id"],
        productId: json["product_id"],
        createdBy: json["created_by"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedBy: json["updated_by"],
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "plant_id": plantId,
        "summary_group_id": summaryGroupId,
        "wastage_summary_group_id": wastageSummaryGroupId,
        "product_id": productId,
        "created_by": createdBy,
        "created_at": createdAt.toIso8601String(),
        "updated_by": updatedBy,
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
    };
}
