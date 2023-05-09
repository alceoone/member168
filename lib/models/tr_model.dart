class TrModel {
  int? invoice_details_id;
  String? member_id_key;
  String? nomorInvoice;
  String? keterangan;
  String? created;

  TrModel({
    required this.invoice_details_id,
    required this.member_id_key,
    required this.nomorInvoice,
    required this.keterangan,
    required this.created,
  });

  TrModel.fromJson(Map<String, dynamic> json) {
    invoice_details_id = json['invoice_details_id'];
    member_id_key = json['member_id_key'];
    nomorInvoice = json['nomorInvoice'];
    keterangan = json['keterangan'];
    created = json['created'];
  }
  Map<String, dynamic> toJson() {
    return {
      'invoice_details_id': invoice_details_id,
      'member_id_key': member_id_key,
      'nomorInvoice': nomorInvoice,
      'keterangan': keterangan,
      'created': created,
    };
  }
}
