class RespHome {
  dynamic dtVisibility;
  List<DtContent>? dtContent;
  List<DtMonthlyStat>? dtMonthlyStat;
  List<DtObsCount>? dtObsCount;
  List<dynamic>? dtCompPerc;
  List<DtAbstract>? dtAbstract;
  List<DtImage>? dtImage;
  List<DtPerformance>? dtPerformance;
  dynamic dtFrequency;
  List<DtSafetyTips>? dtSafetyTips;
  dynamic dtDeptActions;
  dynamic dtPendingAction;
  List<DtTarget>? dtTarget;
  List<DtMvif>? dtMvif;
  List<DtLagg>? dtLagg;
  List<DtLead>? dtLead;
  List<DtPerfTrcf>? dtPerfTrcf;

  RespHome({this.dtVisibility, this.dtContent, this.dtMonthlyStat, this.dtObsCount, this.dtCompPerc, this.dtAbstract, this.dtImage, this.dtPerformance, this.dtFrequency, this.dtSafetyTips, this.dtDeptActions, this.dtPendingAction, this.dtTarget, this.dtMvif, this.dtLagg, this.dtLead, this.dtPerfTrcf});

  RespHome.fromJson(Map<String, dynamic> json) {
    dtVisibility = json["dtVisibility"];
    dtContent = json["dtContent"] == null ? null : (json["dtContent"] as List).map((e) => DtContent.fromJson(e)).toList();
    dtMonthlyStat = json["dtMonthlyStat"] == null ? null : (json["dtMonthlyStat"] as List).map((e) => DtMonthlyStat.fromJson(e)).toList();
    dtObsCount = json["dtObsCount"] == null ? null : (json["dtObsCount"] as List).map((e) => DtObsCount.fromJson(e)).toList();
    dtCompPerc = json["dtCompPerc"] ?? [];
    dtAbstract = json["dtAbstract"] == null ? null : (json["dtAbstract"] as List).map((e) => DtAbstract.fromJson(e)).toList();
    dtImage = json["dtImage"] == null ? null : (json["dtImage"] as List).map((e) => DtImage.fromJson(e)).toList();
    dtPerformance = json["dtPerformance"] == null ? null : (json["dtPerformance"] as List).map((e) => DtPerformance.fromJson(e)).toList();
    dtFrequency = json["dtFrequency"];
    dtSafetyTips = json["dtSafetyTips"] == null ? null : (json["dtSafetyTips"] as List).map((e) => DtSafetyTips.fromJson(e)).toList();
    dtDeptActions = json["dtDeptActions"];
    dtPendingAction = json["dtPendingAction"];
    dtTarget = json["dtTarget"] == null ? null : (json["dtTarget"] as List).map((e) => DtTarget.fromJson(e)).toList();
    dtMvif = json["dtMVIF"] == null ? null : (json["dtMVIF"] as List).map((e) => DtMvif.fromJson(e)).toList();
    dtLagg = json["dtLagg"] == null ? null : (json["dtLagg"] as List).map((e) => DtLagg.fromJson(e)).toList();
    dtLead = json["dtLead"] == null ? null : (json["dtLead"] as List).map((e) => DtLead.fromJson(e)).toList();
    dtPerfTrcf = json["dtPerfTrcf"] == null ? null : (json["dtPerfTrcf"] as List).map((e) => DtPerfTrcf.fromJson(e)).toList();
  }

  static List<RespHome> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => RespHome.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["dtVisibility"] = dtVisibility;
    if(dtContent != null) {
      _data["dtContent"] = dtContent?.map((e) => e.toJson()).toList();
    }
    if(dtMonthlyStat != null) {
      _data["dtMonthlyStat"] = dtMonthlyStat?.map((e) => e.toJson()).toList();
    }
    if(dtObsCount != null) {
      _data["dtObsCount"] = dtObsCount?.map((e) => e.toJson()).toList();
    }
    if(dtCompPerc != null) {
      _data["dtCompPerc"] = dtCompPerc;
    }
    if(dtAbstract != null) {
      _data["dtAbstract"] = dtAbstract?.map((e) => e.toJson()).toList();
    }
    if(dtImage != null) {
      _data["dtImage"] = dtImage?.map((e) => e.toJson()).toList();
    }
    if(dtPerformance != null) {
      _data["dtPerformance"] = dtPerformance?.map((e) => e.toJson()).toList();
    }
    _data["dtFrequency"] = dtFrequency;
    if(dtSafetyTips != null) {
      _data["dtSafetyTips"] = dtSafetyTips?.map((e) => e.toJson()).toList();
    }
    _data["dtDeptActions"] = dtDeptActions;
    _data["dtPendingAction"] = dtPendingAction;
    if(dtTarget != null) {
      _data["dtTarget"] = dtTarget?.map((e) => e.toJson()).toList();
    }
    if(dtMvif != null) {
      _data["dtMVIF"] = dtMvif?.map((e) => e.toJson()).toList();
    }
    if(dtLagg != null) {
      _data["dtLagg"] = dtLagg?.map((e) => e.toJson()).toList();
    }
    if(dtLead != null) {
      _data["dtLead"] = dtLead?.map((e) => e.toJson()).toList();
    }
    if(dtPerfTrcf != null) {
      _data["dtPerfTrcf"] = dtPerfTrcf?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class DtPerfTrcf {
  int? year;
  String? attrName;
  int? attrValue;

  DtPerfTrcf({this.year, this.attrName, this.attrValue});

  DtPerfTrcf.fromJson(Map<String, dynamic> json) {
    year = (json["Year"] as num).toInt();
    attrName = json["AttrName"];
    attrValue = (json["AttrValue"] as num).toInt();
  }

  static List<DtPerfTrcf> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => DtPerfTrcf.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["Year"] = year;
    _data["AttrName"] = attrName;
    _data["AttrValue"] = attrValue;
    return _data;
  }
}

class DtLead {
  String? dateVal;
  int? sortOrder;
  dynamic bp;
  dynamic tri;
  dynamic tot;

  DtLead({this.dateVal, this.sortOrder, this.bp, this.tri, this.tot});

  DtLead.fromJson(Map<String, dynamic> json) {
    dateVal = json["DateVal"];
    sortOrder = (json["SortOrder"] as num).toInt();
    bp = json["BP"];
    tri = json["TRI"];
    tot = json["Tot"];
  }

  static List<DtLead> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => DtLead.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["DateVal"] = dateVal;
    _data["SortOrder"] = sortOrder;
    _data["BP"] = bp;
    _data["TRI"] = tri;
    _data["Tot"] = tot;
    return _data;
  }
}

class DtLagg {
  String? dateVal;
  int? sortOrder;
  dynamic anm;
  dynamic dm;
  dynamic fac;
  dynamic fat;
  dynamic lti;
  dynamic ltif;
  dynamic ltift;
  dynamic mtc;
  dynamic nmi;
  dynamic rta;
  dynamic rtaf;
  dynamic rwc;
  dynamic rwdc;
  dynamic trcf;
  dynamic trir;
  dynamic trirt;
  dynamic tt;
  dynamic tot;

  DtLagg({this.dateVal, this.sortOrder, this.anm, this.dm, this.fac, this.fat, this.lti, this.ltif, this.ltift, this.mtc, this.nmi, this.rta, this.rtaf, this.rwc, this.rwdc, this.trcf, this.trir, this.trirt, this.tt, this.tot});

  DtLagg.fromJson(Map<String, dynamic> json) {
    dateVal = json["DateVal"];
    sortOrder = (json["SortOrder"] as num).toInt();
    anm = json["ANM"];
    dm = json["DM"];
    fac = json["FAC"];
    fat = json["FAT"];
    lti = json["LTI"];
    ltif = json["LTIF"];
    ltift = json["LTIFT"];
    mtc = json["MTC"];
    nmi = json["NMI"];
    rta = json["RTA"];
    rtaf = json["RTAF"];
    rwc = json["RWC"];
    rwdc = json["RWDC"];
    trcf = json["TRCF"];
    trir = json["TRIR"];
    trirt = json["TRIRT"];
    tt = json["TT"];
    tot = json["Tot"];
  }

  static List<DtLagg> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => DtLagg.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["DateVal"] = dateVal;
    _data["SortOrder"] = sortOrder;
    _data["ANM"] = anm;
    _data["DM"] = dm;
    _data["FAC"] = fac;
    _data["FAT"] = fat;
    _data["LTI"] = lti;
    _data["LTIF"] = ltif;
    _data["LTIFT"] = ltift;
    _data["MTC"] = mtc;
    _data["NMI"] = nmi;
    _data["RTA"] = rta;
    _data["RTAF"] = rtaf;
    _data["RWC"] = rwc;
    _data["RWDC"] = rwdc;
    _data["TRCF"] = trcf;
    _data["TRIR"] = trir;
    _data["TRIRT"] = trirt;
    _data["TT"] = tt;
    _data["Tot"] = tot;
    return _data;
  }
}

class DtMvif {
  String? statisticMonth;
  int? monthVal;
  dynamic mvifTarget;
  int? mvif;
  dynamic rofTarget;
  int? rof;
  int? mvifUnit;

  DtMvif({this.statisticMonth, this.monthVal, this.mvifTarget, this.mvif, this.rofTarget, this.rof, this.mvifUnit});

  DtMvif.fromJson(Map<String, dynamic> json) {
    statisticMonth = json["StatisticMonth"];
    monthVal = (json["MONTH_VAL"] as num).toInt();
    mvifTarget = json["MVIFTarget"];
    mvif = (json["MVIF"] as num).toInt();
    rofTarget = json["ROFTarget"];
    rof = (json["ROF"] as num).toInt();
    mvifUnit = (json["MVIFUnit"] as num).toInt();
  }

  static List<DtMvif> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => DtMvif.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["StatisticMonth"] = statisticMonth;
    _data["MONTH_VAL"] = monthVal;
    _data["MVIFTarget"] = mvifTarget;
    _data["MVIF"] = mvif;
    _data["ROFTarget"] = rofTarget;
    _data["ROF"] = rof;
    _data["MVIFUnit"] = mvifUnit;
    return _data;
  }
}

class DtTarget {
  String? statisticMonth;
  int? monthVal;
  dynamic ltifTarget;
  int? ltif;
  dynamic trcfTarget;
  int? trcf;
  int? ltifUnit;

  DtTarget({this.statisticMonth, this.monthVal, this.ltifTarget, this.ltif, this.trcfTarget, this.trcf, this.ltifUnit});

  DtTarget.fromJson(Map<String, dynamic> json) {
    statisticMonth = json["StatisticMonth"];
    monthVal = (json["MONTH_VAL"] as num).toInt();
    ltifTarget = json["LTIFTarget"];
    ltif = (json["LTIF"] as num).toInt();
    trcfTarget = json["TRCFTarget"];
    trcf = (json["TRCF"] as num).toInt();
    ltifUnit = (json["LTIFUnit"] as num).toInt();
  }

  static List<DtTarget> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => DtTarget.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["StatisticMonth"] = statisticMonth;
    _data["MONTH_VAL"] = monthVal;
    _data["LTIFTarget"] = ltifTarget;
    _data["LTIF"] = ltif;
    _data["TRCFTarget"] = trcfTarget;
    _data["TRCF"] = trcf;
    _data["LTIFUnit"] = ltifUnit;
    return _data;
  }
}

class DtSafetyTips {
  String? title;
  String? description;
  int? status;

  DtSafetyTips({this.title, this.description, this.status});

  DtSafetyTips.fromJson(Map<String, dynamic> json) {
    title = json["Title"];
    description = json["Description"];
    status = (json["Status"] as num).toInt();
  }

  static List<DtSafetyTips> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => DtSafetyTips.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["Title"] = title;
    _data["Description"] = description;
    _data["Status"] = status;
    return _data;
  }
}

class DtPerformance {
  String? itemDescription;
  String? statisticValue;
  String? forSplit;

  DtPerformance({this.itemDescription, this.statisticValue, this.forSplit});

  DtPerformance.fromJson(Map<String, dynamic> json) {
    itemDescription = json["ItemDescription"];
    statisticValue = json["StatisticValue"];
    forSplit = json["ForSplit"];
  }

  static List<DtPerformance> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => DtPerformance.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["ItemDescription"] = itemDescription;
    _data["StatisticValue"] = statisticValue;
    _data["ForSplit"] = forSplit;
    return _data;
  }
}

class DtImage {
  int? displaySequence;
  String? imageName;
  int? imageId;
  String? imagePath;
  int? docId;

  DtImage({this.displaySequence, this.imageName, this.imageId, this.imagePath, this.docId});

  DtImage.fromJson(Map<String, dynamic> json) {
    displaySequence = (json["DisplaySequence"] as num).toInt();
    imageName = json["ImageName"];
    imageId = (json["ImageId"] as num).toInt();
    imagePath = json["ImagePath"];
    docId = (json["DocId"] as num).toInt();
  }

  static List<DtImage> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => DtImage.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["DisplaySequence"] = displaySequence;
    _data["ImageName"] = imageName;
    _data["ImageId"] = imageId;
    _data["ImagePath"] = imagePath;
    _data["DocId"] = docId;
    return _data;
  }
}

class DtAbstract {
  String? item;
  int? count;
  String? colour;
  String? screenUrl;
  String? screenCode;
  String? screenTitle;
  String? module;
  String? moduleLogo;
  String? moduleLogoNew;
  String? moduleRight;

  DtAbstract({this.item, this.count, this.colour, this.screenUrl, this.screenCode, this.screenTitle, this.module, this.moduleLogo, this.moduleLogoNew, this.moduleRight});

  DtAbstract.fromJson(Map<String, dynamic> json) {
    item = json["Item"];
    count = (json["Count"] as num).toInt();
    colour = json["Colour"];
    screenUrl = json["ScreenUrl"];
    screenCode = json["ScreenCode"];
    screenTitle = json["ScreenTitle"];
    module = json["Module"];
    moduleLogo = json["ModuleLogo"];
    moduleLogoNew = json["ModuleLogoNew"];
    moduleRight = json["ModuleRight"];
  }

  static List<DtAbstract> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => DtAbstract.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["Item"] = item;
    _data["Count"] = count;
    _data["Colour"] = colour;
    _data["ScreenUrl"] = screenUrl;
    _data["ScreenCode"] = screenCode;
    _data["ScreenTitle"] = screenTitle;
    _data["Module"] = module;
    _data["ModuleLogo"] = moduleLogo;
    _data["ModuleLogoNew"] = moduleLogoNew;
    _data["ModuleRight"] = moduleRight;
    return _data;
  }
}

class DtObsCount {
  String? groupName;
  int? groupOrder;
  int? obsCount;
  String? color;

  DtObsCount({this.groupName, this.groupOrder, this.obsCount, this.color});

  DtObsCount.fromJson(Map<String, dynamic> json) {
    groupName = json["GroupName"];
    groupOrder = (json["GroupOrder"] as num).toInt();
    obsCount = (json["ObsCount"] as num).toInt();
    color = json["color"];
  }

  static List<DtObsCount> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => DtObsCount.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["GroupName"] = groupName;
    _data["GroupOrder"] = groupOrder;
    _data["ObsCount"] = obsCount;
    _data["color"] = color;
    return _data;
  }
}

class DtMonthlyStat {
  String? statisticMonth;
  int? monthVal;
  dynamic ltifTarget;
  int? ltif;
  dynamic trcfTarget;
  int? trcf;

  DtMonthlyStat({this.statisticMonth, this.monthVal, this.ltifTarget, this.ltif, this.trcfTarget, this.trcf});

  DtMonthlyStat.fromJson(Map<String, dynamic> json) {
    statisticMonth = json["StatisticMonth"];
    monthVal = (json["MONTH_VAL"] as num).toInt();
    ltifTarget = json["LTIFTarget"];
    ltif = (json["LTIF"] as num).toInt();
    trcfTarget = json["TRCFTarget"];
    trcf = (json["TRCF"] as num).toInt();
  }

  static List<DtMonthlyStat> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => DtMonthlyStat.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["StatisticMonth"] = statisticMonth;
    _data["MONTH_VAL"] = monthVal;
    _data["LTIFTarget"] = ltifTarget;
    _data["LTIF"] = ltif;
    _data["TRCFTarget"] = trcfTarget;
    _data["TRCF"] = trcf;
    return _data;
  }
}

class DtContent {
  int? contentId;
  String? category;
  String? contentType;
  String? title;
  String? description;
  String? contentLink;
  String? status;
  String? scheduleFromDate;
  dynamic scheduleToDate;
  String? companyName;

  DtContent({this.contentId, this.category, this.contentType, this.title, this.description, this.contentLink, this.status, this.scheduleFromDate, this.scheduleToDate, this.companyName});

  DtContent.fromJson(Map<String, dynamic> json) {
    contentId = (json["ContentId"] as num).toInt();
    category = json["Category"];
    contentType = json["ContentType"];
    title = json["Title"];
    description = json["Description"];
    contentLink = json["ContentLink"];
    status = json["Status"];
    scheduleFromDate = json["ScheduleFromDate"];
    scheduleToDate = json["ScheduleToDate"];
    companyName = json["CompanyName"];
  }

  static List<DtContent> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => DtContent.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["ContentId"] = contentId;
    _data["Category"] = category;
    _data["ContentType"] = contentType;
    _data["Title"] = title;
    _data["Description"] = description;
    _data["ContentLink"] = contentLink;
    _data["Status"] = status;
    _data["ScheduleFromDate"] = scheduleFromDate;
    _data["ScheduleToDate"] = scheduleToDate;
    _data["CompanyName"] = companyName;
    return _data;
  }
}