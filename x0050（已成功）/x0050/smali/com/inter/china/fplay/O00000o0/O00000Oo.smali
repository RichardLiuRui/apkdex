.class public Lcom/inter/china/fplay/O00000o0/O00000Oo;
.super Ljava/lang/Thread;
.source "SMSHandleThread.java"


# instance fields
.field private O000000o:Landroid/content/Context;

.field private O00000Oo:Landroid/content/Intent;

.field private O00000o:Lorg/json/JSONObject;

.field private O00000o0:Ljava/lang/String;

.field private O00000oO:Z

.field private O00000oo:Landroid/content/SharedPreferences;

.field private final O0000O0o:Landroid/net/Uri;

.field private final O0000OOo:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 418
    const-string v0, "content://sms/sent"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O0000O0o:Landroid/net/Uri;

    .line 419
    const-string v0, "content://sms/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O0000OOo:Landroid/net/Uri;

    .line 47
    iput-object p1, p0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O000000o:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000Oo:Landroid/content/Intent;

    .line 49
    iput-object p3, p0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000o0:Ljava/lang/String;

    .line 50
    iput-boolean p4, p0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000oO:Z

    .line 51
    invoke-static {p1}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000oo:Landroid/content/SharedPreferences;

    .line 52
    const-class v0, Lcom/inter/china/fplay/O00000o0/O00000Oo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSMSSendSucceed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method private O000000o()V
    .locals 7

    .prologue
    const/16 v6, 0x1388

    .line 94
    const-class v0, Lcom/inter/china/fplay/O00000o0/O00000Oo;

    const-string v1, "\u77ed\u4fe1\u53d1\u9001\u4e4b\u540e\u4e0a\u62a5\u4e86"

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000Oo:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    .line 98
    const-string v1, "port"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    const-string v2, "sms"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--> port="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    iget-object v2, p0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O000000o:Landroid/content/Context;

    invoke-static {v2}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O000000o(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--> imsi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "imsi"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 106
    const-string v4, "content"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-class v0, Lcom/inter/china/fplay/O00000o0/O00000Oo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hashMap : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 109
    new-instance v0, Lcom/inter/china/fplay/O00000o0/O000000o;

    invoke-direct {v0}, Lcom/inter/china/fplay/O00000o0/O000000o;-><init>()V

    const-string v1, "http://www.palmfunplay.cn/log/verifycode"

    invoke-virtual {v0, v1, v3, v6, v6}, Lcom/inter/china/fplay/O00000o0/O000000o;->O000000o(Ljava/lang/String;Ljava/util/Map;II)Ljava/lang/String;

    move-result-object v0

    .line 110
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

    goto/16 :goto_0
.end method

.method private O000000o(Landroid/content/Context;Lcom/inter/china/fplay/O00000o/O000000o$O000000o;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 422
    .line 424
    if-nez p1, :cond_0

    .line 425
    :try_start_0
    sget-object p1, Lcom/inter/china/fplay/service/LlcServoceOne;->O000000o:Landroid/content/Context;

    .line 427
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 428
    if-nez v0, :cond_2

    .line 465
    if-eqz v6, :cond_1

    .line 466
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 468
    :cond_1
    :goto_0
    return-void

    .line 431
    :cond_2
    :try_start_1
    const-string v3, "type=2"

    .line 432
    iget-object v1, p0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O0000O0o:Landroid/net/Uri;

    sget-object v2, Lcom/inter/china/fplay/O00000oO/O0000o00;->O00000o0:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "date desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 433
    if-nez v7, :cond_3

    .line 465
    if-eqz v7, :cond_1

    .line 466
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 436
    :cond_3
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    if-eqz v1, :cond_4

    .line 441
    :try_start_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_5

    .line 442
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 443
    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 444
    const/4 v1, 0x3

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v1

    :goto_1
    move v4, v1

    move-object v6, v3

    move-object v3, v2

    .line 458
    :goto_2
    :try_start_4
    invoke-static {v6}, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O000000o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v5, v0

    move-object v6, p2

    .line 459
    invoke-direct/range {v1 .. v6}, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O000000o(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ContentResolver;Lcom/inter/china/fplay/O00000o/O000000o$O000000o;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 465
    :cond_4
    if-eqz v7, :cond_1

    .line 466
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 446
    :cond_5
    :try_start_5
    const-string v1, "address"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 447
    const-string v1, "body"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 448
    const-string v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v1

    goto :goto_1

    .line 450
    :catch_0
    move-exception v1

    .line 451
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 452
    const-string v2, "printStackTrace,printStackTrace----------------"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 456
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move v4, v8

    move-object v3, v6

    goto :goto_2

    .line 461
    :catch_1
    move-exception v0

    move-object v1, v6

    .line 462
    :goto_3
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 463
    const-string v2, "Found failed, sql exception ----------------"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 465
    if-eqz v1, :cond_1

    .line 466
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 465
    :catchall_0
    move-exception v0

    move-object v7, v6

    :goto_4
    if-eqz v7, :cond_6

    .line 466
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 465
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v7, v1

    goto :goto_4

    .line 461
    :catch_2
    move-exception v0

    move-object v1, v7

    goto :goto_3
.end method

.method private O000000o(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ContentResolver;Lcom/inter/china/fplay/O00000o/O000000o$O000000o;)V
    .locals 6

    .prologue
    .line 471
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    const-class v0, Lcom/inter/china/fplay/O00000o0/O00000Oo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sender = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; sms = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; address.equals(smsCursor.phoneNumber) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p5, Lcom/inter/china/fplay/O00000o/O000000o$O000000o;->O00000Oo:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; sms.equals(smsCursor.smsContent) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p5, Lcom/inter/china/fplay/O00000o/O000000o$O000000o;->O000000o:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 474
    iget-object v0, p5, Lcom/inter/china/fplay/O00000o/O000000o$O000000o;->O00000Oo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p5, Lcom/inter/china/fplay/O00000o/O000000o$O000000o;->O000000o:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    const-class v0, Lcom/inter/china/fplay/O00000o0/O00000Oo;

    const-string v1, "delete sms ----- "

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O0000OOo:Landroid/net/Uri;

    const-string v1, "_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p4, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 477
    const-class v1, Lcom/inter/china/fplay/O00000o0/O00000Oo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private O000000o(Z)V
    .locals 0

    .prologue
    .line 390
    invoke-direct {p0, p1}, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000Oo(Z)V

    .line 391
    return-void
.end method

.method private O000000o(ZIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 18

    .prologue
    .line 215
    const/4 v3, 0x2

    move/from16 v0, p3

    if-eq v0, v3, :cond_0

    .line 216
    if-eqz p1, :cond_2

    const/16 v3, 0xc8

    :goto_0
    move/from16 v0, p3

    invoke-static {v3, v0}, Lcom/inter/china/fplay/login/Door;->payCallBack(II)V

    .line 217
    :cond_0
    const-string v3, ""

    .line 218
    const/4 v5, 0x0

    .line 219
    const/4 v4, 0x0

    .line 222
    const/4 v3, 0x0

    .line 223
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000o:Lorg/json/JSONObject;

    if-eqz v6, :cond_a

    .line 224
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000o:Lorg/json/JSONObject;

    const-string v4, "orderNum"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 225
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 323
    :cond_1
    :goto_1
    return-void

    .line 216
    :cond_2
    const/16 v3, 0x69

    goto :goto_0

    .line 226
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000o:Lorg/json/JSONObject;

    const-string v5, "sdkLog"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 227
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000o:Lorg/json/JSONObject;

    const-string v6, "prop_name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 230
    if-nez p1, :cond_4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000o:Lorg/json/JSONObject;

    const-string v7, "is_reported"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_1

    .line 232
    :cond_4
    if-eqz p1, :cond_5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000o:Lorg/json/JSONObject;

    const-string v7, "is_reported"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 233
    const/16 p3, 0x4

    .line 235
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000o:Lorg/json/JSONObject;

    const-string v7, "is_reported"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_7

    .line 237
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000o:Lorg/json/JSONObject;

    const-string v7, "is_reported"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 239
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000oo:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000o:Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p7

    invoke-static {v6, v0, v7}, Lcom/inter/china/fplay/O00000oO/O0000Oo;->O000000o(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v11, v3

    move-object v12, v4

    move-object v13, v5

    .line 246
    :goto_2
    const-string v3, "province"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 247
    const-string v4, "city"

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 248
    const-string v5, "imsi"

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 249
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O000000o:Landroid/content/Context;

    invoke-static {v6}, Lcom/inter/china/fplay/login/O00000Oo;->O00000Oo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 250
    const-string v6, "mobile"

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 251
    const-string v7, "sdkv"

    const-string v8, ""

    invoke-static {v7, v8}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 252
    const-string v8, "osv"

    const-string v9, ""

    invoke-static {v8, v9}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 253
    const-string v9, "brand"

    const-string v10, ""

    invoke-static {v9, v10}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 254
    const-string v10, "model"

    const-string v14, ""

    invoke-static {v10, v14}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 256
    new-instance v16, Lorg/json/JSONObject;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONObject;-><init>()V

    .line 258
    if-eqz p1, :cond_8

    .line 259
    :try_start_1
    const-string v14, "1 "

    .line 267
    :goto_3
    const-string v17, "num"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    const-string v17, "cId"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    const-string v17, "codeId"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 270
    const-string v17, "result"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 271
    const-string v17, "feeType"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 272
    const-string v17, "desc"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    const-string v14, "province"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    const-string v3, "city"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    const-string v3, "imsi"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    const-string v3, "iccid"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    const-string v3, "mobile"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    const-string v3, "sdkv"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    const-string v3, "osv"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    const-string v3, "brand"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 281
    const-string v3, "model"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 282
    const-string v3, "orderNum"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 283
    const-string v3, "propName"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 288
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parameters reported in SMS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    const-class v3, Lcom/inter/china/fplay/O00000o0/O00000Oo;

    const-string v4, "executeSubThread -- cleanSms start"

    invoke-static {v3, v4}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 292
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O000000o(I)Z

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O000000o(Z)V

    .line 293
    new-instance v3, Lcom/inter/china/fplay/O00000o0/O000000o;

    invoke-direct {v3}, Lcom/inter/china/fplay/O00000o0/O000000o;-><init>()V

    const-string v4, "http://www.palmfunplay.cn/fee/result"

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x3a98

    sget-object v7, Lcom/inter/china/fplay/service/LlcServoceOne;->O000000o:Landroid/content/Context;

    const-string v8, "UTF-8"

    new-instance v9, Lcom/inter/china/fplay/O00000o0/O00000Oo$1;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/inter/china/fplay/O00000o0/O00000Oo$1;-><init>(Lcom/inter/china/fplay/O00000o0/O00000Oo;)V

    invoke-virtual/range {v3 .. v9}, Lcom/inter/china/fplay/O00000o0/O000000o;->O000000o(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Lcom/inter/china/fplay/O00000o/O00000o$O000000o;)Ljava/lang/String;

    .line 314
    if-eqz v11, :cond_6

    .line 315
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " JSON: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 317
    const-string v4, "content"

    invoke-static {}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O00000Oo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string v4, "http://www.palmfunplay.cn/log/content"

    const-string v5, "UTF-8"

    invoke-static {v4, v3, v5}, Lcom/inter/china/fplay/O00000o0/O000000o;->O000000o(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 320
    :cond_6
    invoke-static {}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o()V

    .line 322
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p7

    invoke-direct {v0, v1, v2}, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O000000o(ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 240
    :catch_0
    move-exception v6

    .line 241
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    :cond_7
    move v11, v3

    move-object v12, v4

    move-object v13, v5

    goto/16 :goto_2

    .line 261
    :cond_8
    if-eqz p6, :cond_9

    .line 262
    :try_start_2
    const-string v14, "3"

    goto/16 :goto_3

    .line 264
    :cond_9
    const-string v14, "2"
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    .line 284
    :catch_1
    move-exception v3

    .line 285
    const-string v4, "SMS parameter is error "

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_4

    :cond_a
    move v11, v3

    move-object v12, v4

    move-object v13, v5

    goto/16 :goto_2
.end method

.method private O000000o(ZLjava/lang/String;)V
    .locals 7

    .prologue
    .line 331
    if-eqz p1, :cond_0

    .line 332
    const/4 v0, 0x0

    .line 334
    iget-object v1, p0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000o:Lorg/json/JSONObject;

    const-string v2, "step"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 335
    iget-object v0, p0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000o:Lorg/json/JSONObject;

    const-string v1, "F"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 338
    const-class v0, Lcom/inter/china/fplay/O00000o0/O00000Oo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fJo.optBoolean(StringTools.INTERCEPT_VCODE) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "interceptVcode"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000o0(Ljava/lang/Class;Ljava/lang/String;)V

    .line 339
    const-string v0, "interceptVcode"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000oo:Landroid/content/SharedPreferences;

    invoke-static {v0, p2}, Lcom/inter/china/fplay/O00000oO/O0000Oo;->O000000o(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 344
    :catch_0
    move-exception v0

    .line 345
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 347
    :cond_1
    const/4 v0, 0x1

    .line 349
    :cond_2
    iget-object v1, p0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000o:Lorg/json/JSONObject;

    const-string v2, "step"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "C"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 351
    iget-object v0, p0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000oo:Landroid/content/SharedPreferences;

    invoke-static {v0, p2}, Lcom/inter/china/fplay/O00000oO/O0000Oo;->O000000o(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_0

    .line 355
    :cond_3
    iget-object v1, p0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000oo:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 356
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 358
    if-nez v0, :cond_5

    .line 359
    :try_start_1
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 360
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 364
    invoke-static {v1, v0}, Lcom/inter/china/fplay/O00000oO/O0000Oo;->O000000o(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 367
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 368
    const-string v0, "prefix"

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000o:Lorg/json/JSONObject;

    const-string v5, "prefix"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "suffix"

    const-string v4, ""

    .line 369
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000o:Lorg/json/JSONObject;

    const-string v5, "suffix"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "smsKey"

    const-string v4, ""

    .line 370
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000o:Lorg/json/JSONObject;

    const-string v5, "smsKey"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "portKey"

    const-string v4, ""

    .line 371
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000o:Lorg/json/JSONObject;

    const-string v4, "portKey"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 373
    iget-object v0, p0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000oo:Landroid/content/SharedPreferences;

    invoke-static {v0, p2}, Lcom/inter/china/fplay/O00000oO/O0000Oo;->O000000o(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 374
    const-class v0, Lcom/inter/china/fplay/O00000o0/O00000Oo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove selectedKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 383
    :catch_1
    move-exception v0

    .line 384
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 380
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000o:Lorg/json/JSONObject;

    const-string v1, "orderNum"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 382
    iget-object v0, p0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000oo:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000o:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/inter/china/fplay/O00000oO/O0000Oo;->O000000o(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method private O000000o(ZZ)V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 181
    const-string v0, "num"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 182
    const-string v0, "cId"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 184
    const-string v0, "over sms send ,"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    iget-object v0, p0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000Oo:Landroid/content/Intent;

    const-string v1, "selected_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 189
    const-class v0, Lcom/inter/china/fplay/O00000o/O00000o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000o0(Ljava/lang/Class;Ljava/lang/String;)V

    .line 190
    const/4 v0, 0x0

    .line 193
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000oo:Landroid/content/SharedPreferences;

    invoke-static {v0, v7}, Lcom/inter/china/fplay/O00000oO/O0000Oo;->O00000Oo(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 196
    const-class v1, Lcom/inter/china/fplay/O00000o0/O00000Oo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cacheValue : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 198
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 199
    iput-object v3, p0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000o:Lorg/json/JSONObject;

    .line 200
    const-string v0, "codeId"

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 201
    :try_start_1
    const-string v0, "feeType"

    const/4 v8, 0x1

    invoke-virtual {v3, v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 202
    const-class v0, Lcom/inter/china/fplay/O00000o0/O00000Oo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "codeId = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v2

    move v2, v1

    .line 207
    :goto_0
    if-nez v2, :cond_1

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code id \u4e3a 0 \u4e86 \uff01 codeId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    :goto_1
    return-void

    .line 203
    :catch_0
    move-exception v0

    move v1, v6

    .line 204
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move v3, v2

    move v2, v1

    goto :goto_0

    :cond_1
    move-object v0, p0

    move v1, p1

    move v6, p2

    .line 211
    invoke-direct/range {v0 .. v7}, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O000000o(ZIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_1

    .line 203
    :catch_1
    move-exception v0

    goto :goto_2

    :cond_2
    move v3, v2

    move v2, v6

    goto :goto_0
.end method

.method private O000000o(I)Z
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 483
    const/4 v0, 0x1

    .line 485
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private O00000Oo()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 115
    iget-boolean v0, p0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000oO:Z

    if-nez v0, :cond_1

    .line 116
    invoke-direct {p0, v7, v8}, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O000000o(ZZ)V

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    const-string v0, "\u77ed\u4fe1\u6765\u4e86  assignmentFlag()"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000Oo:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O000000o(Landroid/content/Intent;)Z

    .line 121
    iget-object v0, p0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000Oo:Landroid/content/Intent;

    const-string v1, "orderNumSend"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    const-string v1, "\u77ed\u4fe1\u6765\u4e86  ! ----------------"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    iget-object v1, p0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000Oo:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 124
    if-eqz v1, :cond_3

    .line 125
    const-string v2, "step"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    const-string v3, "port"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 128
    const-string v4, "sms"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    const-class v4, Lcom/inter/china/fplay/O00000o0/O00000Oo;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "step = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; ordNum = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; phone = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; sms = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 130
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 131
    new-instance v4, Lcom/inter/china/fplay/O00000o/O000000o$O000000o;

    invoke-direct {v4, v1, v3}, Lcom/inter/china/fplay/O00000o/O000000o$O000000o;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O000000o:Landroid/content/Context;

    invoke-direct {p0, v1, v4}, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O000000o(Landroid/content/Context;Lcom/inter/china/fplay/O00000o/O000000o$O000000o;)V

    .line 134
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "A,B"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "A,D"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    :cond_3
    invoke-direct {p0, v8, v7}, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O000000o(ZZ)V

    goto/16 :goto_0
.end method

.method private declared-synchronized O00000Oo(Z)V
    .locals 3

    .prologue
    .line 394
    monitor-enter p0

    :try_start_0
    const-class v0, Lcom/inter/china/fplay/O00000o0/O00000Oo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeSubThread -- cleanSms starting ...flag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 395
    new-instance v0, Lcom/inter/china/fplay/O00000o/O00000o;

    invoke-direct {v0}, Lcom/inter/china/fplay/O00000o/O00000o;-><init>()V

    invoke-virtual {v0, p1}, Lcom/inter/china/fplay/O00000o/O00000o;->O000000o(Z)V

    .line 396
    if-eqz p1, :cond_0

    .line 397
    const-string v0, "codeIdYzf"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O000000o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 398
    const-string v0, "shujuxiangqingyzf"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O000000o(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    :goto_0
    monitor-exit p0

    return-void

    .line 402
    :cond_0
    :try_start_1
    const-string v0, "codeId"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O000000o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 403
    const-string v0, "shujuxiangqing"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O000000o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 404
    const-class v0, Lcom/inter/china/fplay/O00000o0/O00000Oo;

    const-string v1, "executeSubThread -- cleanSms stop ing"

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 405
    invoke-static {}, Lcom/inter/china/fplay/login/Door;->get()Lcom/inter/china/fplay/login/Door;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inter/china/fplay/login/Door;->a(Ljava/lang/Long;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 394
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private O00000o()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 146
    iget-object v0, p0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000Oo:Landroid/content/Intent;

    const-string v3, "myFlag"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 147
    const-class v0, Lcom/inter/china/fplay/O00000o0/O00000Oo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 148
    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 160
    :goto_1
    return-void

    .line 148
    :sswitch_0
    const-string v4, "-1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0

    .line 150
    :pswitch_0
    const-string v0, "desc"

    const-string v2, "sms send is erro "

    invoke-static {v0, v2}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O000000o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    invoke-direct {p0, v1, v1}, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O000000o(ZZ)V

    goto :goto_1

    .line 154
    :pswitch_1
    const-string v0, "desc"

    const-string v3, "sms send is ok "

    invoke-static {v0, v3}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O000000o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    invoke-direct {p0, v2, v1}, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O000000o(ZZ)V

    goto :goto_1

    .line 148
    :sswitch_data_0
    .sparse-switch
        0x31 -> :sswitch_1
        0x5a4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private O00000o0()V
    .locals 2

    .prologue
    .line 141
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O000000o(ZZ)V

    .line 142
    return-void
.end method

.method private O00000oO()V
    .locals 4

    .prologue
    .line 163
    const-class v0, Lcom/inter/china/fplay/service/LlcServoceOne;

    iget-object v1, p0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O000000o:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000oo/O000O0o;->O000000o(Ljava/lang/Class;Landroid/content/Context;)Z

    move-result v0

    .line 164
    if-eqz v0, :cond_0

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O000000o:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O000000o:Landroid/content/Context;

    const-class v3, Lcom/inter/china/fplay/service/LlcServoceOne;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    const-string v1, "service started failed "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private O00000oo()V
    .locals 5

    .prologue
    .line 174
    const-string v0, "num"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-static {}, Lcom/inter/china/fplay/login/Door;->get()Lcom/inter/china/fplay/login/Door;

    move-result-object v2

    iget-object v3, p0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O000000o:Landroid/content/Context;

    const-string v0, "num"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "cId"

    const-string v4, ""

    invoke-static {v1, v4}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lcom/inter/china/fplay/login/Door;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_0
    return-void
.end method


# virtual methods
.method public O000000o(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 415
    const-string v0, "orderType"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 57
    iget-object v2, p0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000o0:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 82
    const-string v0, "---- > \u6267\u884c\u6d41\u7a0b  default: "

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    invoke-direct {p0}, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000oo()V

    .line 87
    :goto_1
    return-void

    .line 57
    :sswitch_0
    const-string v3, "com.broadcast.telephony.SMS_SENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v3, "cn.tesjda.over"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "funplay.sms.report.log"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "as.tesk.lkf.ajsd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "com.scd.broadcastreceiver.DeliverMessage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v3, "android.intent.action.TIME_TICK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 59
    :pswitch_0
    const-class v0, Lcom/inter/china/fplay/O00000o0/O00000Oo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STRINSMSSENDACTION & isSMSSendSucceed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000oO:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000Oo()V

    goto :goto_1

    .line 65
    :pswitch_1
    invoke-direct {p0}, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000o0()V

    goto :goto_1

    .line 68
    :pswitch_2
    invoke-direct {p0}, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O000000o()V

    goto :goto_1

    .line 74
    :pswitch_3
    invoke-direct {p0}, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000o()V

    goto :goto_1

    .line 79
    :pswitch_4
    invoke-direct {p0}, Lcom/inter/china/fplay/O00000o0/O00000Oo;->O00000oO()V

    goto :goto_1

    .line 57
    nop

    :sswitch_data_0
    .sparse-switch
        -0x79b39c72 -> :sswitch_0
        -0x5a2f0b56 -> :sswitch_5
        -0x362251f6 -> :sswitch_3
        -0x34152ea6 -> :sswitch_2
        -0x3bc2e6 -> :sswitch_1
        0x52bca227 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
