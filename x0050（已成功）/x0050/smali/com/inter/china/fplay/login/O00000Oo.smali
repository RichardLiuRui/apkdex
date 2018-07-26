.class public Lcom/inter/china/fplay/login/O00000Oo;
.super Ljava/lang/Object;
.source "SMSEngine.java"


# static fields
.field public static O000000o:Z

.field private static O00000Oo:Landroid/os/Handler;


# instance fields
.field private O00000o0:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/inter/china/fplay/login/O00000Oo;->O00000o0:Ljava/util/Timer;

    return-void
.end method

.method public static declared-synchronized O000000o(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 1046
    const-class v1, Lcom/inter/china/fplay/login/O00000Oo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/inter/china/fplay/login/Door;->O00000Oo:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1047
    const-string v0, "e5a7fd91687a94e8eba9a721ad5e9ded"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/inter/china/fplay/login/Door;->O00000Oo:Landroid/content/SharedPreferences;

    .line 1048
    :cond_0
    sget-object v0, Lcom/inter/china/fplay/login/Door;->O00000Oo:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1046
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private O000000o(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 701
    const-string v0, "[0-9\\.]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 702
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 703
    const-string v0, ""

    .line 704
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 705
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 706
    const-class v0, Lcom/inter/china/fplay/login/O00000Oo;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 707
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 710
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 711
    :cond_2
    const-string v0, "[^0-9]"

    .line 712
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 713
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 715
    :cond_3
    return-object v0
.end method

.method private O000000o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 685
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    .line 686
    invoke-virtual {p1, p3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 687
    if-gez v1, :cond_0

    const/4 v1, 0x0

    .line 688
    :cond_0
    add-int/lit8 v2, v1, 0x2

    if-ge v0, v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 689
    :cond_1
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 690
    invoke-direct {p0, v0, p4}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 691
    return-object v0
.end method

.method private O000000o(Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 794
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 796
    packed-switch p3, :pswitch_data_0

    .line 826
    :cond_0
    :goto_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 827
    const-string v0, "-->"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 798
    :pswitch_0
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 799
    const/16 v0, 0x3f

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 801
    :cond_2
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 802
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 803
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x3d

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 805
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 809
    :pswitch_1
    const-string v0, "-->"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Json\u53c2\u6570\u4e3a: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 811
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 812
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 815
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 816
    :catch_0
    move-exception v0

    .line 817
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 820
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 822
    :cond_5
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 796
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private O000000o(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 624
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 625
    const-string v1, "reqFixedParams"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 626
    const-string v2, "reqDynamicParams"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 627
    const-string v3, "extParams"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 628
    const-string v4, "missParams"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 629
    const-string v5, "vcodeK"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 630
    invoke-direct {p0, v0, v1}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 631
    invoke-direct {p0, v0, v2}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 632
    invoke-direct {p0, v0, v3}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 633
    invoke-direct {p0, p1, v0, v4}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 634
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 635
    invoke-virtual {v0, v5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    :cond_0
    return-object v0
.end method

.method private O000000o(Lcom/inter/china/fplay/O00000o/O000000o$O000000o;Landroid/content/Context;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inter/china/fplay/O00000o/O000000o$O000000o;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 834
    invoke-static {p2}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O000000o(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 835
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 836
    const-string v0, "num"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 837
    const-string v1, "cId"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 838
    const-string v2, "sdkv"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 840
    const-string v5, "imsi"

    const-string v3, "imsi"

    const-string v6, ""

    invoke-static {v3, v6}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    const-string v3, "num"

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    const-string v0, "cId"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    const-string v0, "sdkv"

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    const-string v0, "port"

    iget-object v1, p1, Lcom/inter/china/fplay/O00000o/O000000o$O000000o;->O00000Oo:Ljava/lang/String;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    const-string v0, "content"

    iget-object v1, p1, Lcom/inter/china/fplay/O00000o/O000000o$O000000o;->O000000o:Ljava/lang/String;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    const-class v0, Lcom/inter/china/fplay/login/O00000Oo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSmsJson map : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 847
    return-object v4
.end method

.method static synthetic O000000o(Lcom/inter/china/fplay/login/O00000Oo;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/inter/china/fplay/login/O00000Oo;->O00000o0:Ljava/util/Timer;

    return-object v0
.end method

.method public static O000000o(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1052
    invoke-static {p0, p1, p2}, Lcom/inter/china/fplay/login/Door;->O000000o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    return-void
.end method

.method public static O000000o(Landroid/content/BroadcastReceiver;)V
    .locals 0

    .prologue
    .line 987
    sput-object p0, Lcom/inter/china/fplay/login/Door;->O000000o:Landroid/content/BroadcastReceiver;

    .line 988
    return-void
.end method

.method private O000000o(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 962
    if-eqz p1, :cond_0

    .line 963
    new-instance v0, Lcom/inter/china/fplay/login/O00000Oo$2;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p2

    move-object v4, p5

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/inter/china/fplay/login/O00000Oo$2;-><init>(Lcom/inter/china/fplay/login/O00000Oo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 977
    new-instance v1, Ljava/util/Timer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/Timer;-><init>(Z)V

    .line 978
    mul-int/lit16 v2, p3, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 980
    :cond_0
    return-void
.end method

.method private O000000o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 464
    const-class v0, Lcom/inter/china/fplay/login/O00000Oo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2 sendSucByMsg --------- phone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; securityCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 465
    new-instance v0, Lcom/inter/china/fplay/O000000o/O0000O0o;

    invoke-direct {v0}, Lcom/inter/china/fplay/O000000o/O0000O0o;-><init>()V

    .line 466
    invoke-virtual {v0, p5}, Lcom/inter/china/fplay/O000000o/O0000O0o;->O000000o(I)V

    .line 467
    const-string v1, "D"

    invoke-virtual {v0, v1}, Lcom/inter/china/fplay/O000000o/O0000O0o;->O000000o(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v0, p2}, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000Oo(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v0, p7}, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000Oo(I)V

    .line 470
    invoke-virtual {v0, p3}, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000o0(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v0, p4}, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000o0(I)V

    .line 472
    iput-object p6, v0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O0000OOo:Ljava/lang/String;

    .line 473
    iput-object p8, v0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O0000Oo0:Ljava/lang/String;

    .line 475
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inter/china/fplay/O000000o/O0000O0o;->O000000o(Z)V

    .line 476
    invoke-static {p1, v0}, Lcom/inter/china/fplay/O00000oo/O000O0o0;->O000000o(Landroid/content/Context;Lcom/inter/china/fplay/O000000o/O0000O0o;)V

    .line 477
    return-void
.end method

.method private O000000o(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 514
    const-class v0, Lcom/inter/china/fplay/login/O00000Oo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reqUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; paramsMap : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000o(Ljava/lang/Class;Ljava/lang/String;)V

    .line 515
    const-string v0, "UTF-8"

    invoke-static {p2, p3, v0}, Lcom/inter/china/fplay/O00000o0/O000000o;->O000000o(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 516
    const-class v1, Lcom/inter/china/fplay/login/O00000Oo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doPost = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 518
    const-string v1, "respDataType"

    invoke-virtual {p6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 519
    const-string v1, "respDecode"

    invoke-virtual {p6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 520
    packed-switch v1, :pswitch_data_0

    :cond_0
    move-object v6, v0

    .line 535
    :goto_0
    const/4 v0, 0x0

    .line 536
    packed-switch v2, :pswitch_data_1

    .line 549
    :goto_1
    :pswitch_0
    if-eqz v0, :cond_1

    .line 550
    const-string v0, "post code send is ok"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 551
    const/4 v3, 0x1

    const-string v4, "as.tesk.lkf.ajsd"

    const-string v5, "1"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p7

    invoke-direct/range {v0 .. v5}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 557
    :goto_2
    const/4 v0, 0x2

    invoke-direct {p0, p2, p3, v0, p4}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 559
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 560
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    move-object v1, v0

    .line 561
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " imsi="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v0, "imsi"

    const-string v5, ""

    invoke-static {v0, v5}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 562
    const-string v4, "content"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "    -->"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-->\u8fd4\u56de\u53c2\u6570\uff1a ----> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contentMap : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 565
    new-instance v0, Lcom/inter/china/fplay/O00000o0/O000000o;

    invoke-direct {v0}, Lcom/inter/china/fplay/O00000o0/O000000o;-><init>()V

    const-string v1, "http://www.palmfunplay.cn/log/verifycode"

    const/16 v2, 0x1388

    const/16 v4, 0x1388

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/inter/china/fplay/O00000o0/O000000o;->O000000o(Ljava/lang/String;Ljava/util/Map;II)Ljava/lang/String;

    move-result-object v0

    .line 566
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " \u670d\u52a1\u5668\u8fd4\u56de\u53c2\u6570\u4e3a \u3001 \u63d0\u4ea4\u9a8c\u8bc1\u7801  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 571
    return-void

    :pswitch_1
    move-object v6, v0

    .line 522
    goto/16 :goto_0

    .line 524
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/inter/china/fplay/login/O00000Oo;->O00000Oo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 525
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v6, v1

    .line 526
    goto/16 :goto_0

    .line 530
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/inter/china/fplay/login/O00000Oo;->O00000o0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 531
    goto/16 :goto_0

    .line 538
    :pswitch_4
    invoke-direct {p0, p6, v6}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_1

    .line 541
    :pswitch_5
    invoke-direct {p0, p6, v6}, Lcom/inter/china/fplay/login/O00000Oo;->O00000Oo(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_1

    .line 554
    :cond_1
    const-string v0, "post code send  is  error "

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 555
    const/4 v3, 0x1

    const-string v4, "as.tesk.lkf.ajsd"

    const-string v5, "-1"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p7

    invoke-direct/range {v0 .. v5}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 560
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_3

    .line 520
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 536
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method private O000000o(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 643
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 657
    :cond_0
    return-void

    .line 645
    :cond_1
    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 646
    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 647
    :goto_0
    array-length v0, v6

    if-ge v4, v0, :cond_0

    .line 648
    aget-object v0, v6, v4

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 649
    aget-object v3, v6, v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 647
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 651
    :cond_2
    const-string v0, "@"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    const-string v0, "@"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 653
    :goto_1
    array-length v0, v5

    if-ge v4, v0, :cond_0

    .line 654
    aget-object v3, v5, v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 653
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private O000000o(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 719
    invoke-static {p1}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O000000o(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    move v1, v2

    .line 720
    :goto_0
    array-length v0, p5

    if-ge v1, v0, :cond_1

    .line 721
    const/4 v0, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 720
    :goto_2
    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 721
    :sswitch_0
    const-string v4, "imsi"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string v4, "imei"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v4, "iccid"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v4, "ip"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v4, "mac"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v4, "lac"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string v4, "cid"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string v4, "sid"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_8
    const-string v4, "nid"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_9
    const-string v4, "bid"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_a
    const-string v4, "lng"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_b
    const-string v4, "lat"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string v4, "mobile"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string v4, "province"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string v4, "city"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string v4, "appName"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_10
    const-string v4, "propName"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_11
    const-string v4, "timestamp"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_12
    const-string v4, "netType"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_13
    const-string v4, "model"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_14
    const-string v4, "osv"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_15
    const-string v4, "ua"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    .line 723
    :pswitch_1
    aget-object v0, p5, p4

    const-string v4, "imsi"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 726
    :pswitch_2
    aget-object v0, p5, p4

    const-string v4, "imei"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 729
    :pswitch_3
    aget-object v0, p5, p4

    invoke-static {p1}, Lcom/inter/china/fplay/login/O00000Oo;->O00000Oo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 732
    :pswitch_4
    aget-object v0, p5, p4

    const-string v4, "192.168.0.1"

    invoke-virtual {p2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 735
    :pswitch_5
    aget-object v0, p5, p4

    const-string v4, "mac"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 761
    :pswitch_6
    aget-object v4, p5, p4

    const-string v0, "province"

    const-string v5, ""

    invoke-static {v0, v5}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 764
    :pswitch_7
    aget-object v4, p5, p4

    const-string v0, "city"

    const-string v5, ""

    invoke-static {v0, v5}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 767
    :pswitch_8
    aget-object v0, p5, p4

    const-string v4, "packageName"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 770
    :pswitch_9
    aget-object v4, p5, p4

    const-string v0, "propName"

    const-string v5, ""

    invoke-static {v0, v5}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 774
    :pswitch_a
    aget-object v0, p5, p4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 777
    :pswitch_b
    aget-object v0, p5, p4

    const-string v4, "wifi"

    invoke-virtual {p2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 780
    :pswitch_c
    aget-object v0, p5, p4

    const-string v4, "model"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 783
    :pswitch_d
    aget-object v0, p5, p4

    const-string v4, "osv"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 786
    :pswitch_e
    aget-object v0, p5, p4

    invoke-static {p1}, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O00000oO(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 791
    :cond_1
    return-void

    .line 721
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3fb56f5e -> :sswitch_c
        -0x3b3cd772 -> :sswitch_10
        -0x3adbd4d0 -> :sswitch_d
        -0x2f558fb4 -> :sswitch_f
        0xd27 -> :sswitch_3
        0xe8c -> :sswitch_15
        0x17cfd -> :sswitch_9
        0x180be -> :sswitch_6
        0x1a18e -> :sswitch_5
        0x1a19f -> :sswitch_b
        0x1a325 -> :sswitch_a
        0x1a54f -> :sswitch_4
        0x1aa09 -> :sswitch_8
        0x1af12 -> :sswitch_14
        0x1bcce -> :sswitch_7
        0x2e996b -> :sswitch_e
        0x3160c8 -> :sswitch_1
        0x31627a -> :sswitch_0
        0x3492916 -> :sswitch_11
        0x5f62564 -> :sswitch_2
        0x633fb29 -> :sswitch_13
        0x6dd19677 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method static O000000o(Lcom/inter/china/fplay/login/PayCallBack;I)V
    .locals 2

    .prologue
    .line 1031
    sget-object v0, Lcom/inter/china/fplay/login/O00000Oo;->O00000Oo:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1032
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/inter/china/fplay/login/O00000Oo;->O00000Oo:Landroid/os/Handler;

    .line 1033
    :cond_0
    sget-object v0, Lcom/inter/china/fplay/login/O00000Oo;->O00000Oo:Landroid/os/Handler;

    new-instance v1, Lcom/inter/china/fplay/login/O00000Oo$4;

    invoke-direct {v1, p0, p1}, Lcom/inter/china/fplay/login/O00000Oo$4;-><init>(Lcom/inter/china/fplay/login/PayCallBack;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1043
    return-void
.end method

.method public static O000000o(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1060
    sput-object p0, Lcom/inter/china/fplay/login/Door;->O00000o:Ljava/lang/String;

    .line 1061
    const-class v0, Lcom/inter/china/fplay/login/O00000Oo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIccid Door.iccidK = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/inter/china/fplay/login/Door;->O00000o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1062
    return-void
.end method

.method private O000000o(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 660
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 682
    :cond_0
    return-void

    .line 662
    :cond_1
    const-string v0, "&"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 663
    const-string v0, "&"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 664
    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 665
    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 666
    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v0, v1

    .line 667
    :goto_1
    array-length v6, v5

    if-ge v0, v6, :cond_3

    .line 668
    rem-int/lit8 v6, v0, 0x2

    if-nez v6, :cond_2

    .line 669
    aget-object v6, v5, v0

    add-int/lit8 v7, v0, 0x1

    aget-object v7, v5, v7

    invoke-virtual {p1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 664
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 675
    :cond_4
    const-string v0, "="

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    const-string v0, "="

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 677
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 678
    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_5

    .line 679
    aget-object v2, v0, v1

    add-int/lit8 v3, v1, 0x1

    aget-object v3, v0, v3

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static O000000o()Z
    .locals 1

    .prologue
    .line 1056
    sget-boolean v0, Lcom/inter/china/fplay/login/Door;->O00000o0:Z

    return v0
.end method

.method private O000000o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z
    .locals 21

    .prologue
    .line 301
    const-class v5, Lcom/inter/china/fplay/login/O00000Oo;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -- \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p4 .. p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n -- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -- bit = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p9

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 302
    const-string v5, "step"

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 303
    const/4 v9, 0x0

    .line 304
    const/4 v8, 0x0

    .line 305
    const/4 v7, 0x1

    .line 306
    const/4 v6, 0x0

    .line 307
    const/4 v5, 0x0

    .line 308
    const-string v10, "D"

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 309
    const-string v10, "D"

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 311
    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 312
    const-string v10, "sms"

    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 315
    const-string v10, "port"

    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 316
    :try_start_1
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v12, "0"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v12, 0x8

    if-lt v8, v12, :cond_0

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v12

    if-eq v8, v12, :cond_2

    :cond_1
    move-object/from16 v8, p2

    .line 317
    :goto_0
    :try_start_2
    const-class v10, Lcom/inter/china/fplay/login/O00000Oo;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "1 --------- phone = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 318
    const-string v10, "sendType"

    const/4 v12, 0x1

    invoke-virtual {v11, v10, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 319
    const-string v10, "endeType"

    const/4 v12, 0x0

    invoke-virtual {v11, v10, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 320
    const-string v10, "portmini"

    const/4 v12, 0x0

    invoke-virtual {v11, v10, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v5

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move-object v5, v8

    move-object v6, v9

    .line 326
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    move-object/from16 v7, p2

    .line 328
    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 330
    const/4 v5, 0x1

    move/from16 v0, p8

    if-ne v0, v5, :cond_3

    .line 332
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move/from16 v4, p9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 333
    const-class v5, Lcom/inter/china/fplay/login/O00000Oo;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "1 --- securityCode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    move-object v8, v6

    .line 340
    :goto_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 341
    const/4 v5, 0x0

    .line 356
    :goto_4
    return v5

    :cond_2
    move-object v8, v10

    .line 316
    goto :goto_0

    .line 322
    :catch_0
    move-exception v10

    .line 323
    :goto_5
    invoke-virtual {v10}, Lorg/json/JSONException;->printStackTrace()V

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move-object v5, v8

    move-object v6, v9

    goto :goto_1

    .line 334
    :cond_3
    const/4 v5, 0x2

    move/from16 v0, p8

    if-ne v0, v5, :cond_4

    .line 336
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p9

    invoke-direct {v0, v1, v2}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 337
    const-class v5, Lcom/inter/china/fplay/login/O00000Oo;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "2 --- securityCode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_4
    move-object v8, v6

    goto :goto_3

    .line 342
    :cond_5
    const-class v5, Lcom/inter/china/fplay/login/O00000Oo;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "step = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 343
    invoke-direct/range {p0 .. p0}, Lcom/inter/china/fplay/login/O00000Oo;->O00000Oo()V

    .line 345
    const-string v5, "F"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v9, p4

    move-object/from16 v10, p3

    move-object/from16 v11, p10

    .line 347
    invoke-virtual/range {v5 .. v11}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_6
    :goto_6
    const-string v5, "G"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 355
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 356
    :cond_7
    const/4 v5, 0x1

    goto/16 :goto_4

    .line 348
    :cond_8
    const-string v5, "D"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 349
    const/16 v10, 0xf

    const-string v11, "funplay.sms.report.log"

    const/4 v12, 0x0

    new-instance v15, Lcom/inter/china/fplay/O00000o/O000000o$O000000o;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6307\u4ee4\u5173\u952e\u5b57\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n \u9a8c\u8bc1\u7801\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n \u77ed\u4fe1\u5185\u5bb9\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v15, v5, v7}, Lcom/inter/china/fplay/O00000o/O000000o$O000000o;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v9, p0

    move-object/from16 v13, p10

    move-object/from16 v14, p1

    invoke-virtual/range {v9 .. v15}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/inter/china/fplay/O00000o/O000000o$O000000o;)V

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v9, v18

    move/from16 v10, v17

    move-object/from16 v11, v19

    move/from16 v12, v16

    move-object/from16 v13, p10

    .line 351
    invoke-direct/range {v5 .. v13}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;)V

    goto :goto_6

    .line 322
    :catch_1
    move-exception v8

    move-object/from16 v20, v8

    move-object v8, v10

    move-object/from16 v10, v20

    goto/16 :goto_5

    :cond_9
    move-object v7, v5

    goto/16 :goto_2

    :cond_a
    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move-object v5, v8

    move-object v6, v9

    goto/16 :goto_1
.end method

.method static synthetic O000000o(Lcom/inter/china/fplay/login/O00000Oo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z
    .locals 1

    .prologue
    .line 56
    invoke-direct/range {p0 .. p10}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private O000000o(Ljava/lang/String;Lorg/json/JSONObject;I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 887
    const-class v1, Lcom/inter/china/fplay/login/O00000Oo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 888
    packed-switch p3, :pswitch_data_0

    .line 905
    :cond_0
    :goto_0
    return v0

    .line 891
    :pswitch_0
    invoke-direct {p0, p2, p1}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 893
    :pswitch_1
    invoke-direct {p0, p2, p1}, Lcom/inter/china/fplay/login/O00000Oo;->O00000Oo(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 896
    :pswitch_2
    invoke-static {p1}, Lcom/inter/china/fplay/O00000oo/O000O0o;->O000000o(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 898
    if-eqz v1, :cond_0

    .line 899
    const-string v0, "respSuccessK"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 900
    const-string v2, "respSuccessV"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 901
    invoke-static {v1, v0, v2}, Lcom/inter/china/fplay/O00000oo/O000O0o;->O000000o(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 888
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private O000000o(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 910
    const-string v0, "respSuccessK"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 911
    const-string v0, "respSuccessV"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 912
    const-class v0, Lcom/inter/china/fplay/login/O00000Oo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "successKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; successValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n; response = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 914
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 915
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 916
    if-nez v0, :cond_2

    if-nez v4, :cond_2

    .line 917
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 918
    const-class v0, Lcom/inter/china/fplay/login/O00000Oo;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "split : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    move v0, v1

    .line 919
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_0

    .line 920
    aget-object v5, v4, v0

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 921
    add-int/lit8 v5, v0, 0x1

    aget-object v5, v4, v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 922
    const/4 v1, 0x1

    .line 929
    :cond_0
    :goto_1
    return v1

    .line 919
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 926
    :cond_2
    if-nez v4, :cond_0

    .line 927
    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_1
.end method

.method public static O00000Oo(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1065
    sget-object v0, Lcom/inter/china/fplay/login/Door;->O00000o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/inter/china/fplay/login/O00000Oo;->O000000o:Z

    if-nez v0, :cond_0

    .line 1066
    invoke-static {p0}, Lcom/inter/china/fplay/login/O00000Oo;->O00000o0(Landroid/content/Context;)V

    .line 1068
    :cond_0
    const-class v0, Lcom/inter/china/fplay/login/O00000Oo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIccid Door.iccidK = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/inter/china/fplay/login/Door;->O00000o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1069
    sget-object v0, Lcom/inter/china/fplay/login/Door;->O00000o:Ljava/lang/String;

    return-object v0
.end method

.method private O00000Oo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 867
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 872
    :goto_0
    return-object v0

    .line 868
    :catch_0
    move-exception v0

    .line 869
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 870
    const-string v1, "URL decode is ERROR : "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 872
    const-string v0, ""

    goto :goto_0
.end method

.method private O00000Oo(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 851
    packed-switch p2, :pswitch_data_0

    .line 861
    :goto_0
    :pswitch_0
    return-object p1

    .line 855
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/inter/china/fplay/login/O00000Oo;->O00000Oo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 856
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, v0

    .line 857
    goto :goto_0

    .line 859
    :cond_0
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/inter/china/fplay/login/O00000Oo;->O00000o0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 851
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private O00000Oo()V
    .locals 1

    .prologue
    .line 991
    sget-object v0, Lcom/inter/china/fplay/login/Door;->O000000o:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/inter/china/fplay/login/Door;->O000000o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver;->isOrderedBroadcast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 992
    sget-object v0, Lcom/inter/china/fplay/login/Door;->O000000o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver;->abortBroadcast()V

    .line 994
    :cond_0
    return-void
.end method

.method private O00000Oo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 219
    const-string v0, "a41ef78f80bd3e308dc65bb85a782673"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 220
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 221
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 222
    const-class v0, Lcom/inter/china/fplay/login/O00000Oo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cacheMap : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 223
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 224
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 225
    const-string v2, ""

    .line 227
    :try_start_0
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 228
    const/4 v5, 0x0

    if-gez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_1
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 229
    new-instance v1, Ljava/lang/String;

    invoke-static {v2}, Lcom/inter/china/fplay/O00000oO/O00000o;->O000000o(Ljava/lang/String;)[B

    move-result-object v5

    const-string v6, "utf-8"

    invoke-direct {v1, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    const-class v2, Lcom/inter/china/fplay/login/O00000Oo;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "downPort : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 234
    const/4 v2, 0x0

    .line 235
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 236
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 237
    const-class v1, Lcom/inter/china/fplay/login/O00000Oo;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "G ports : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 238
    array-length v6, v5

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v6, :cond_7

    aget-object v7, v5, v1

    .line 239
    const-class v8, Lcom/inter/china/fplay/login/O00000Oo;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "port = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; sender = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 241
    const/4 v1, 0x1

    .line 246
    :goto_2
    const-class v2, Lcom/inter/china/fplay/login/O00000Oo;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isContainsPort = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 248
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 250
    :try_start_1
    new-instance v2, Ljava/lang/String;

    invoke-static {v0}, Lcom/inter/china/fplay/O00000oO/O00000o;->O000000o(Ljava/lang/String;)[B

    move-result-object v5

    const-string v6, "utf-8"

    invoke-direct {v2, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 251
    :try_start_2
    const-class v0, Lcom/inter/china/fplay/login/O00000Oo;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "downInterceptKeys : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v2

    .line 255
    :goto_3
    const/4 v2, 0x0

    .line 256
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 257
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 258
    array-length v6, v5

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v6, :cond_6

    aget-object v7, v5, v0

    .line 259
    const-class v8, Lcom/inter/china/fplay/login/O00000Oo;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "smsKey = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; sms = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 260
    invoke-virtual {p3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 261
    const/4 v0, 0x1

    .line 268
    :goto_5
    const-class v2, Lcom/inter/china/fplay/login/O00000Oo;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isContainsSmsKey = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 270
    if-nez v1, :cond_2

    if-eqz v0, :cond_0

    .line 272
    :cond_2
    const-class v0, Lcom/inter/china/fplay/login/O00000Oo;

    const-string v1, "abortBroadcast() ----- "

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 273
    invoke-direct {p0}, Lcom/inter/china/fplay/login/O00000Oo;->O00000Oo()V

    .line 274
    new-instance v0, Lcom/inter/china/fplay/O00000o0/O000000o;

    invoke-direct {v0}, Lcom/inter/china/fplay/O00000o0/O000000o;-><init>()V

    const-string v1, "http://www.palmfunplay.cn/log/sms"

    new-instance v2, Lcom/inter/china/fplay/O00000o/O000000o$O000000o;

    invoke-direct {v2, p3, p2}, Lcom/inter/china/fplay/O00000o/O000000o$O000000o;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2, p1}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Lcom/inter/china/fplay/O00000o/O000000o$O000000o;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    const/16 v3, 0x7530

    const/16 v4, 0x7530

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/inter/china/fplay/O00000o0/O000000o;->O000000o(Ljava/lang/String;Ljava/util/Map;II)Ljava/lang/String;

    move-result-object v0

    .line 275
    const-class v1, Lcom/inter/china/fplay/login/O00000Oo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 280
    :cond_3
    return-void

    .line 230
    :catch_0
    move-exception v1

    move-object v11, v1

    move-object v1, v2

    move-object v2, v11

    .line 231
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0

    .line 238
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 252
    :catch_1
    move-exception v2

    .line 253
    :goto_6
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_3

    .line 258
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 252
    :catch_2
    move-exception v0

    move-object v11, v0

    move-object v0, v2

    move-object v2, v11

    goto :goto_6

    :cond_6
    move v0, v2

    goto :goto_5

    :cond_7
    move v1, v2

    goto/16 :goto_2
.end method

.method private O00000Oo(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v7, 0x1388

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 581
    new-instance v0, Lcom/inter/china/fplay/O00000o0/O000000o;

    invoke-direct {v0}, Lcom/inter/china/fplay/O00000o0/O000000o;-><init>()V

    const-string v2, "UTF-8"

    invoke-virtual {v0, p2, p3, v7, v2}, Lcom/inter/china/fplay/O00000o0/O000000o;->O000000o(Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 582
    const-class v0, Lcom/inter/china/fplay/login/O00000Oo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doGet = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 584
    const-string v0, "respDataType"

    invoke-virtual {p6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 585
    const-string v2, "respDecode"

    invoke-virtual {p6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 586
    invoke-direct {p0, v6, v2}, Lcom/inter/china/fplay/login/O00000Oo;->O00000Oo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 589
    :try_start_0
    invoke-direct {p0, v2, p6, v0}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Ljava/lang/String;Lorg/json/JSONObject;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 593
    :goto_0
    if-eqz v0, :cond_0

    .line 594
    const-string v0, "code send is ok"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 595
    const-string v4, "as.tesk.lkf.ajsd"

    const-string v5, "1"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p7

    invoke-direct/range {v0 .. v5}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 601
    :goto_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    move-object v1, v0

    .line 602
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " imsi="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v0, "imsi"

    const-string v4, ""

    invoke-static {v0, v4}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 604
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p3, v3, v0}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 606
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 607
    const-string v2, "content"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    const-class v0, Lcom/inter/china/fplay/login/O00000Oo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hashMap : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 610
    new-instance v0, Lcom/inter/china/fplay/O00000o0/O000000o;

    invoke-direct {v0}, Lcom/inter/china/fplay/O00000o0/O000000o;-><init>()V

    const-string v2, "http://www.palmfunplay.cn/log/verifycode"

    invoke-virtual {v0, v2, v1, v7, v7}, Lcom/inter/china/fplay/O00000o0/O000000o;->O000000o(Ljava/lang/String;Ljava/util/Map;II)Ljava/lang/String;

    move-result-object v0

    .line 611
    const-class v1, Lcom/inter/china/fplay/login/O00000Oo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 615
    return-void

    .line 590
    :catch_0
    move-exception v0

    .line 591
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto/16 :goto_0

    .line 598
    :cond_0
    const-string v0, "code send  is  error "

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 599
    const-string v4, "as.tesk.lkf.ajsd"

    const-string v5, "-1"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p7

    invoke-direct/range {v0 .. v5}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 601
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_2
.end method

.method private O00000Oo(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 935
    :try_start_0
    const-string v1, "respSuccessK"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 936
    const-string v2, "respSuccessV"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 937
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 939
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 940
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "successKey"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 941
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "successValue"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 942
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "succed"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 943
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 951
    :cond_0
    :goto_0
    return v0

    .line 945
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 946
    const/4 v0, 0x1

    goto :goto_0

    .line 947
    :catch_0
    move-exception v1

    .line 948
    const-string v2, "get internet parse return is failed "

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private O00000o0(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 876
    const-string v1, ""

    .line 878
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 879
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    :goto_0
    return-object v0

    .line 880
    :catch_0
    move-exception v0

    .line 881
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method private static O00000o0(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1073
    const/4 v0, 0x1

    sput-boolean v0, Lcom/inter/china/fplay/login/O00000Oo;->O000000o:Z

    .line 1074
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inter/china/fplay/login/O00000Oo$5;

    invoke-direct {v1, p0}, Lcom/inter/china/fplay/login/O00000Oo$5;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1088
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1089
    return-void
.end method


# virtual methods
.method public O000000o(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/inter/china/fplay/O00000o/O000000o$O000000o;)V
    .locals 7

    .prologue
    .line 1000
    if-eqz p5, :cond_0

    .line 1001
    new-instance v0, Lcom/inter/china/fplay/login/O00000Oo$3;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/inter/china/fplay/login/O00000Oo$3;-><init>(Lcom/inter/china/fplay/login/O00000Oo;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/inter/china/fplay/O00000o/O000000o$O000000o;)V

    .line 1016
    new-instance v1, Ljava/util/Timer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/Timer;-><init>(Z)V

    .line 1017
    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1019
    :cond_0
    return-void
.end method

.method public O000000o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 24

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 70
    const-class v1, Lcom/inter/china/fplay/login/O00000Oo;

    const-string v2, "Context is null"

    invoke-static {v1, v2}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 214
    :goto_0
    return-void

    .line 77
    :cond_0
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 78
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 112
    invoke-static/range {p1 .. p1}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 114
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v22

    .line 115
    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 117
    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 118
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_1
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 129
    move-object/from16 v0, v22

    invoke-static {v0, v8}, Lcom/inter/china/fplay/O00000oO/O0000Oo;->O000000o(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 132
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 133
    const-string v1, "portKey"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    const-string v3, "orderNum"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 135
    move-object/from16 v0, v20

    invoke-interface {v0, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 138
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    const-string v1, "step"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "A,G"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "step"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "A,D"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 140
    const-string v1, "interceptType"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 141
    const/4 v1, 0x1

    if-eq v6, v1, :cond_4

    const/4 v1, 0x2

    if-ne v6, v1, :cond_1

    .line 142
    :cond_4
    const-string v1, "smsKey"

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 143
    const-string v1, "prefix"

    const-string v4, ""

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 144
    const-string v1, "suffix"

    const-string v5, ""

    invoke-virtual {v2, v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 145
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    const-string v1, "bit"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 148
    const-string v1, "step"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v9, "F"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 149
    const-class v1, Lcom/inter/china/fplay/login/O00000Oo;

    const-string v9, "--------------- 2 -----------------"

    invoke-static {v1, v9}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 150
    new-instance v1, Lcom/inter/china/fplay/O000000o/O000000o;

    invoke-direct/range {v1 .. v8}, Lcom/inter/china/fplay/O000000o/O000000o;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move-object/from16 v19, v8

    .line 152
    invoke-direct/range {v9 .. v19}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_0

    .line 161
    :cond_6
    const-class v1, Lcom/inter/china/fplay/login/O00000Oo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secondaryJO : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 162
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_7
    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 163
    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 164
    const-string v1, "portKey"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_8
    const-string v1, "step"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "A,G"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "step"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "A,D"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 167
    const-string v1, "interceptType"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 168
    const/4 v1, 0x1

    if-eq v6, v1, :cond_9

    const/4 v1, 0x2

    if-ne v6, v1, :cond_7

    .line 169
    :cond_9
    const-string v1, "smsKey"

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 170
    const-string v1, "prefix"

    const-string v4, ""

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 171
    const-string v1, "suffix"

    const-string v5, ""

    invoke-virtual {v2, v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 172
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 174
    const-string v1, "bit"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 175
    const-string v1, "step"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v9, "F"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 176
    const-class v1, Lcom/inter/china/fplay/login/O00000Oo;

    const-string v9, "--------------- 3 -----------------"

    invoke-static {v1, v9}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 177
    new-instance v1, Lcom/inter/china/fplay/O000000o/O000000o;

    invoke-direct/range {v1 .. v8}, Lcom/inter/china/fplay/O000000o/O000000o;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_a
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move-object/from16 v19, v8

    .line 179
    invoke-direct/range {v9 .. v19}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_0

    .line 186
    :cond_b
    const-class v1, Lcom/inter/china/fplay/login/O00000Oo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "judgments.size() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 187
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c

    .line 188
    const/4 v3, 0x0

    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_c

    .line 190
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/inter/china/fplay/login/O00000Oo;->O00000o0:Ljava/util/Timer;

    new-instance v1, Lcom/inter/china/fplay/login/O00000Oo$1;

    move-object/from16 v2, p0

    move-object/from16 v4, v21

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/inter/china/fplay/login/O00000Oo$1;-><init>(Lcom/inter/china/fplay/login/O00000Oo;ILjava/util/List;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v8, v1, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 188
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 213
    :cond_c
    invoke-direct/range {p0 .. p3}, Lcom/inter/china/fplay/login/O00000Oo;->O00000Oo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public O000000o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 412
    const-class v0, Lcom/inter/china/fplay/login/O00000Oo;

    const-string v1, "---------------------------------------- cache *C* start -----------------------------------"

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 413
    const-string v0, "db3284fc93bacac81bd058e5fb28483c"

    invoke-virtual {p1, v0, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 414
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 415
    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 416
    const-class v1, Lcom/inter/china/fplay/login/O00000Oo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cacheGMap : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 417
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 418
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 419
    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 420
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 421
    new-instance v0, Lcom/inter/china/fplay/O00000oO/O0000O0o;

    invoke-direct {v0}, Lcom/inter/china/fplay/O00000oO/O0000O0o;-><init>()V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 422
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    const/16 v0, 0x63

    if-le v1, v0, :cond_0

    .line 423
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 422
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 426
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 427
    const-class v1, Lcom/inter/china/fplay/login/O00000Oo;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "key = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 428
    const-string v1, ""

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 429
    new-instance v5, Ljava/lang/String;

    invoke-static {v1}, Lcom/inter/china/fplay/O00000oO/O00000o;->O000000o(Ljava/lang/String;)[B

    move-result-object v1

    const-string v6, "utf-8"

    invoke-direct {v5, v1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 430
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 431
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 432
    if-lez v1, :cond_2

    :goto_1
    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 433
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/inter/china/fplay/O00000oO/O00000o;->O000000o(Ljava/lang/String;)[B

    move-result-object v0

    const-string v5, "utf-8"

    invoke-direct {v1, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 434
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "smsKey"

    const-string v1, ""

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "prefix"

    const-string v1, ""

    .line 435
    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "suffix"

    const-string v1, ""

    .line 436
    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 449
    :goto_2
    return-void

    .line 432
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1

    .line 439
    :cond_3
    const-string v0, "utf-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/inter/china/fplay/O00000oO/O00000o;->O000000o([B)Ljava/lang/String;

    move-result-object v0

    .line 440
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 441
    const-string v2, "smsKey"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 442
    const-string v2, "prefix"

    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 443
    const-string v2, "suffix"

    invoke-virtual {v1, v2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 444
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/inter/china/fplay/O00000oO/O00000o;->O000000o([B)Ljava/lang/String;

    move-result-object v1

    .line 445
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 446
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 447
    const-class v0, Lcom/inter/china/fplay/login/O00000Oo;

    const-string v1, "---------------------------------------- cache *C* end -----------------------------------"

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public O000000o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 488
    const-string v0, "F"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 489
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 490
    invoke-direct {p0, p1, v6, p3}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 491
    const-string v0, "reqUrl"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 492
    const-string v0, "reqType"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 493
    const-string v1, "reqDataType"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 494
    const-class v1, Lcom/inter/china/fplay/login/O00000Oo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "paramsMap = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 496
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p5

    move-object v5, p2

    move-object v7, p6

    .line 497
    invoke-direct/range {v0 .. v7}, Lcom/inter/china/fplay/login/O00000Oo;->O00000Oo(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 499
    const-class v0, Lcom/inter/china/fplay/login/O00000Oo;

    const-string v1, "post \u8bf7\u6c42"

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p5

    move-object v5, p2

    move-object v7, p6

    .line 500
    invoke-direct/range {v0 .. v7}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public O000000o(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 366
    const-class v0, Lcom/inter/china/fplay/login/O00000Oo;

    const-string v1, "---------------------------------------- cache G start -----------------------------------"

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 367
    const-class v0, Lcom/inter/china/fplay/login/O00000Oo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jsonObject : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 368
    const-string v0, "G"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    const-class v1, Lcom/inter/china/fplay/login/O00000Oo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gStr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 370
    const-string v1, "a41ef78f80bd3e308dc65bb85a782673"

    invoke-virtual {p1, v1, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 371
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 372
    const-string v0, "downPort"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 373
    const-string v0, "downInterceptKeys"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 374
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 375
    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 377
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 378
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 379
    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 380
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 381
    new-instance v0, Lcom/inter/china/fplay/O00000oO/O0000O0o;

    invoke-direct {v0}, Lcom/inter/china/fplay/O00000oO/O0000O0o;-><init>()V

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 382
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    const/16 v0, 0x63

    if-le v1, v0, :cond_0

    .line 383
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v5, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 382
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 386
    :cond_0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 387
    const-string v1, ""

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 388
    new-instance v7, Ljava/lang/String;

    invoke-static {v1}, Lcom/inter/china/fplay/O00000oO/O00000o;->O000000o(Ljava/lang/String;)[B

    move-result-object v1

    const-string v8, "utf-8"

    invoke-direct {v7, v1, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 389
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 390
    if-lez v1, :cond_2

    :goto_1
    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 391
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/inter/china/fplay/O00000oO/O00000o;->O000000o(Ljava/lang/String;)[B

    move-result-object v0

    const-string v8, "utf-8"

    invoke-direct {v1, v0, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 392
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    :goto_2
    return-void

    .line 390
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1

    .line 396
    :cond_3
    const-string v0, "utf-8"

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/inter/china/fplay/O00000oO/O00000o;->O000000o([B)Ljava/lang/String;

    move-result-object v0

    .line 397
    const-string v1, "utf-8"

    invoke-virtual {v4, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/inter/china/fplay/O00000oO/O00000o;->O000000o([B)Ljava/lang/String;

    move-result-object v1

    .line 398
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 399
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 400
    const-class v0, Lcom/inter/china/fplay/login/O00000Oo;

    const-string v1, "---------------------------------------- cache G end -----------------------------------"

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_2
.end method
