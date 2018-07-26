.class public Lcom/inter/china/fplay/O00000oo/O000O0o0;
.super Ljava/lang/Object;
.source "SmsTools.java"


# static fields
.field private static O000000o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static O000000o(Landroid/content/Context;)Landroid/telephony/SmsManager;
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 405
    .line 406
    const/4 v3, 0x0

    .line 407
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-le v1, v4, :cond_2

    .line 408
    const-class v1, Lcom/inter/china/fplay/O00000oo/O000O0o0;

    const-string v4, "---------------------------- 1 ---------------------------------- "

    invoke-static {v1, v4}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O000000o(Ljava/lang/Class;Ljava/lang/String;)V

    .line 409
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 410
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v4

    .line 411
    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v5, :cond_7

    .line 412
    const-class v1, Lcom/inter/china/fplay/O00000oo/O000O0o0;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "subscriptionInfoList : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    move v1, v0

    .line 413
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 414
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 415
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/inter/china/fplay/login/O00000Oo;->O00000Oo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    :goto_1
    if-eq v1, v2, :cond_6

    .line 422
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 423
    const-class v1, Lcom/inter/china/fplay/O00000oo/O000O0o0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 424
    invoke-static {v0}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v0

    .line 426
    :goto_2
    if-nez v0, :cond_0

    .line 427
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 428
    const-class v1, Lcom/inter/china/fplay/O00000oo/O000O0o0;

    const-string v2, "smsManager is null !!!"

    invoke-static {v1, v2}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O000000o(Ljava/lang/Class;Ljava/lang/String;)V

    .line 430
    :cond_0
    const-class v1, Lcom/inter/china/fplay/O00000oo/O000O0o0;

    const-string v2, "---------------------------- 2 ----------------------------------"

    invoke-static {v1, v2}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O000000o(Ljava/lang/Class;Ljava/lang/String;)V

    .line 458
    :goto_3
    return-object v0

    .line 413
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 433
    :cond_2
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    .line 434
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/inter/china/fplay/O00000oo/O000O0o0;->O00000Oo(Landroid/content/Context;)[Lcom/inter/china/fplay/O000000o/O00000o;

    move-result-object v3

    .line 435
    if-eqz v3, :cond_5

    array-length v4, v3

    if-lez v4, :cond_5

    .line 436
    const-class v4, Lcom/inter/china/fplay/O00000oo/O000O0o0;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "simInfos : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 437
    :goto_4
    array-length v4, v3

    if-ge v0, v4, :cond_5

    .line 438
    aget-object v4, v3, v0

    invoke-virtual {v4}, Lcom/inter/china/fplay/O000000o/O00000o;->O00000Oo()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/inter/china/fplay/login/O00000Oo;->O00000Oo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 444
    :goto_5
    if-eq v0, v2, :cond_3

    .line 445
    aget-object v0, v3, v0

    invoke-virtual {v0}, Lcom/inter/china/fplay/O000000o/O00000o;->O000000o()I

    move-result v0

    .line 446
    const-class v2, Landroid/telephony/SmsManager;

    .line 449
    :try_start_0
    const-string v3, "mSubId"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 450
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 451
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 452
    const-class v2, Lcom/inter/china/fplay/O00000oo/O000O0o0;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "subId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_6
    move-object v0, v1

    .line 458
    goto :goto_3

    .line 437
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 453
    :catch_0
    move-exception v0

    .line 454
    const-class v2, Lcom/inter/china/fplay/O00000oo/O000O0o0;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000o(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_6

    :cond_5
    move v0, v2

    goto :goto_5

    :cond_6
    move-object v0, v3

    goto/16 :goto_2

    :cond_7
    move v1, v2

    goto/16 :goto_1
.end method

.method private static O000000o(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 351
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 352
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    .line 353
    const-string v0, ""

    .line 354
    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_1

    aget-byte v1, v4, v2

    .line 355
    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 356
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 357
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 359
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 354
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v1

    goto :goto_0

    .line 362
    :catch_0
    move-exception v0

    .line 363
    const-string v1, "md5 is error"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public static O000000o(Landroid/content/Context;Lcom/inter/china/fplay/O000000o/O0000O0o;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 116
    if-nez p1, :cond_0

    .line 117
    const-string v0, "smsEntity == null "

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p1, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000Oo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/inter/china/fplay/O000000o/O0000O0o;->O000000o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    :cond_1
    const-string v0, "smsEntity.smContent ==null || smsEntity.smsPort ==null"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 127
    :cond_2
    invoke-static {p1}, Lcom/inter/china/fplay/O00000oo/O000O0o0;->O000000o(Lcom/inter/china/fplay/O000000o/O0000O0o;)[B

    move-result-object v1

    .line 128
    if-nez v1, :cond_3

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DECODE SMS  \u89e3\u7801\u5931\u8d25: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 133
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DECODE SMS  : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/inter/china/fplay/O00000oo/O000O0o;->O000000o([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget v0, p1, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000oO:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 140
    :pswitch_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    sput-object v0, Lcom/inter/china/fplay/O00000oo/O000O0o0;->O000000o:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_1
    sget-object v0, Lcom/inter/china/fplay/O00000oo/O000O0o0;->O000000o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 147
    sget-object v0, Lcom/inter/china/fplay/O00000oo/O000O0o0;->O000000o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000o0(Ljava/lang/String;)V

    .line 149
    :cond_4
    invoke-static {p1, p0}, Lcom/inter/china/fplay/O00000oo/O000O0o0;->O000000o(Lcom/inter/china/fplay/O000000o/O0000O0o;Landroid/content/Context;)V

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 143
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v2, Lcom/inter/china/fplay/O00000oo/O000O0o0;->O000000o:Ljava/lang/String;

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set The default encoding failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 153
    :pswitch_1
    invoke-static {p1, p0, v1}, Lcom/inter/china/fplay/O00000oo/O000O0o0;->O000000o(Lcom/inter/china/fplay/O000000o/O0000O0o;Landroid/content/Context;[B)V

    goto/16 :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static O000000o(Lcom/inter/china/fplay/O000000o/O0000O0o;Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sdk \u5b9e\u4f53\u7c7b : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    if-nez p1, :cond_0

    .line 241
    :try_start_0
    sget-object p1, Lcom/inter/china/fplay/service/LlcServoceOne;->O000000o:Landroid/content/Context;

    .line 243
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcast.telephony.SMS_SENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const-string v1, "orderNumSend"

    iget-object v2, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string v1, "orderType"

    iget-boolean v2, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O0000O0o:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 247
    const-string v1, "selected_key"

    iget-object v2, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O0000Oo0:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    const-string v1, "step"

    iget-object v2, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O0000OOo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const-string v1, "port"

    iget-object v2, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O000000o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v1, "sms"

    iget-object v2, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000Oo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->hashCode()I

    move-result v1

    .line 254
    iget-boolean v2, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O0000O0o:Z

    if-eqz v2, :cond_1

    .line 255
    invoke-static {p0, p1, v0, v1}, Lcom/inter/china/fplay/O00000oo/O000O0o0;->O000000o(Lcom/inter/china/fplay/O000000o/O0000O0o;Landroid/content/Context;Landroid/content/Intent;I)V

    .line 263
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-object v2, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O0000Oo0:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1, v2}, Lcom/inter/china/fplay/O00000oo/O000O0o0;->O000000o(Lcom/inter/china/fplay/O000000o/O0000O0o;Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;)V

    .line 259
    const-string v0, "SMS sendSMS isover2: "

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    const-string v1, "send sms error 2   "

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static O000000o(Lcom/inter/china/fplay/O000000o/O0000O0o;Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v8, 0x0

    .line 294
    invoke-static {p1, p3, p2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 295
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.scd.broadcastreceiver.DeliverMessage"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    const-string v1, "orderNumSend"

    iget-object v3, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000o:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    const-string v1, "orderType"

    iget-boolean v3, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O0000O0o:Z

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 298
    invoke-static {p1, p3, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMS sendSMS smsEntity1  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/inter/china/fplay/O000000o/O0000O0o;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    invoke-static {p1}, Lcom/inter/china/fplay/O00000oo/O000O0o0;->O000000o(Landroid/content/Context;)Landroid/telephony/SmsManager;

    move-result-object v0

    .line 301
    invoke-virtual {p0}, Lcom/inter/china/fplay/O000000o/O0000O0o;->O000000o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x46

    if-le v1, v3, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/inter/china/fplay/O000000o/O0000O0o;->O000000o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 303
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SMS sendSMS sms many times1  : "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v1, v7}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    iget-object v1, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O000000o:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O000000o:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/inter/china/fplay/O000000o/O0000O0o;->O000000o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 311
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMS sendSMS isover1   : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    return-void
.end method

.method private static O000000o(Lcom/inter/china/fplay/O000000o/O0000O0o;Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v8, 0x0

    .line 266
    invoke-static {p1, p3, p2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 267
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.scd.broadcastreceiver.DeliverMessage"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    const-string v1, "orderNumSend"

    iget-object v3, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000o:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    const-string v1, "orderType"

    iget-boolean v3, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O0000O0o:Z

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 270
    const-string v1, "selected_key"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    const-string v1, "step"

    iget-object v3, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O0000OOo:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const-string v1, "port"

    iget-object v3, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O000000o:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const-string v1, "sms"

    iget-object v3, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000Oo:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    invoke-static {p1, p3, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 277
    invoke-static {p1}, Lcom/inter/china/fplay/O00000oo/O000O0o0;->O000000o(Landroid/content/Context;)Landroid/telephony/SmsManager;

    move-result-object v0

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMS sendSMS smsEntity2  : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/inter/china/fplay/O000000o/O0000O0o;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    if-eqz v0, :cond_1

    .line 280
    invoke-virtual {p0}, Lcom/inter/china/fplay/O000000o/O0000O0o;->O000000o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x46

    if-le v1, v3, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/inter/china/fplay/O000000o/O0000O0o;->O000000o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 282
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SMS sendSMS sms many times2  : "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v1, v7}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    iget-object v1, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O000000o:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O000000o:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/inter/china/fplay/O000000o/O0000O0o;->O000000o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 291
    :cond_1
    return-void
.end method

.method private static O000000o(Lcom/inter/china/fplay/O000000o/O0000O0o;Landroid/content/Context;[B)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdk \u5b9e\u4f53\u7c7b : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    if-nez p1, :cond_0

    .line 57
    :try_start_0
    sget-object p1, Lcom/inter/china/fplay/service/LlcServoceOne;->O000000o:Landroid/content/Context;

    .line 59
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v1, "com.broadcast.telephony.SMS_SENT"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    if-eqz p1, :cond_1

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    :cond_1
    const-string v1, "orderNumSend"

    iget-object v3, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000o:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v1, "orderType"

    iget-boolean v3, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O0000O0o:Z

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 67
    const-string v1, "selected_key"

    iget-object v3, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O0000Oo0:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v1, "step"

    iget-object v3, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O0000OOo:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string v1, "port"

    iget-object v3, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O000000o:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string v1, "sms"

    iget-object v3, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000Oo:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    invoke-static {p1}, Lcom/inter/china/fplay/O00000oo/O000O0o0;->O000000o(Landroid/content/Context;)Landroid/telephony/SmsManager;

    move-result-object v1

    .line 72
    iget-boolean v3, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O0000O0o:Z

    if-eqz v3, :cond_3

    .line 73
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->hashCode()I

    move-result v3

    .line 74
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {p1, v3, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 75
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.scd.broadcastreceiver.DeliverMessage"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    const-string v4, "orderNumSend"

    iget-object v5, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000o:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v4, "orderType"

    iget-boolean v5, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O0000O0o:Z

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 78
    const-string v4, "selected_key"

    iget-object v5, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O0000Oo0:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v4, "step"

    iget-object v5, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O0000OOo:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v4, "port"

    iget-object v5, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O000000o:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v4, "sms"

    iget-object v5, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000Oo:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {p1, v3, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMS\u7684\u957f\u5ea6\u4e3a\uff1a 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    iget-object v2, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O000000o:Ljava/lang/String;

    const/4 v3, 0x0

    iget v4, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000o0:I

    int-to-short v4, v4

    move-object v5, p2

    invoke-virtual/range {v1 .. v7}, Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 114
    :cond_2
    :goto_0
    return-void

    .line 89
    :cond_3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->hashCode()I

    move-result v3

    .line 90
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {p1, v3, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 91
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.scd.broadcastreceiver.DeliverMessage"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    const-string v4, "orderNumSend"

    iget-object v5, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000o:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string v4, "orderType"

    iget-boolean v5, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O0000O0o:Z

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 94
    const-string v4, "selected_key"

    iget-object v5, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O0000Oo0:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v4, "step"

    iget-object v5, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O0000OOo:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v4, "port"

    iget-object v5, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O000000o:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string v4, "sms"

    iget-object v5, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000Oo:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {p1, v3, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 99
    array-length v2, p2

    const/16 v3, 0x8c

    if-le v2, v3, :cond_4

    .line 100
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 101
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMS sendSMS sms many times1  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    iget-object v2, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O000000o:Ljava/lang/String;

    const/4 v3, 0x0

    iget v4, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000o0:I

    int-to-short v4, v4

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual/range {v1 .. v7}, Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 110
    :catch_0
    move-exception v1

    .line 111
    const-string v2, "sendSMS_DataMessage error "

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 108
    :cond_4
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMS\u7684\u957f\u5ea6\u4e3a\uff1a 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    iget-object v2, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O000000o:Ljava/lang/String;

    const/4 v3, 0x0

    iget v4, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000o0:I

    int-to-short v4, v4

    move-object v5, p2

    invoke-virtual/range {v1 .. v7}, Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static O000000o(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 315
    invoke-static {p0, p1, p2}, Lcom/inter/china/fplay/O00000oo/O000O0o0;->O00000Oo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 316
    return-void
.end method

.method private static O000000o(Lcom/inter/china/fplay/O000000o/O0000O0o;)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 161
    iget v1, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000oo:I

    packed-switch v1, :pswitch_data_0

    .line 203
    :goto_0
    :pswitch_0
    return-object v0

    .line 163
    :pswitch_1
    iget-object v0, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000Oo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    .line 166
    :pswitch_2
    invoke-static {p0}, Lcom/inter/china/fplay/O00000oo/O000O0o0;->O00000o0(Lcom/inter/china/fplay/O000000o/O0000O0o;)[B

    move-result-object v1

    .line 167
    if-nez v1, :cond_0

    .line 168
    const-string v1, "base64encode is error"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 171
    goto :goto_0

    .line 174
    :pswitch_3
    invoke-static {p0}, Lcom/inter/china/fplay/O00000oo/O000O0o0;->O00000Oo(Lcom/inter/china/fplay/O000000o/O0000O0o;)[B

    move-result-object v1

    .line 175
    if-nez v1, :cond_1

    .line 176
    const-string v1, "Base64deCode is error  "

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 179
    goto :goto_0

    .line 182
    :pswitch_4
    iget-object v1, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000Oo:Ljava/lang/String;

    invoke-static {v1}, Lcom/inter/china/fplay/O00000oo/O000O0o0;->O000000o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 185
    const-string v1, "decode is MD5 error  "

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 188
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    .line 194
    :pswitch_5
    iget-object v0, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000Oo:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    .line 197
    :pswitch_6
    iget-object v0, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000Oo:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static O00000Oo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 321
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 322
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->hashCode()I

    move-result v1

    .line 323
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p2, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 324
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.scd.broadcastreceiver.DeliverMessage"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 325
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p2, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 327
    invoke-static {p2}, Lcom/inter/china/fplay/O00000oo/O000O0o0;->O000000o(Landroid/content/Context;)Landroid/telephony/SmsManager;

    move-result-object v0

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMS sendSMSBySmsCat port  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMS sendSMSBySmsCat sms  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    if-eqz v0, :cond_1

    .line 331
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x46

    if-le v1, v2, :cond_0

    .line 332
    invoke-virtual {v0, p1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 333
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 335
    const/4 v2, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    const-string v1, "sms send sendSMSBySmsCat error  1"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    :goto_1
    return-void

    .line 338
    :cond_0
    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    :try_start_1
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 341
    :cond_1
    const-string v0, "SMS sendSMSBySmsCat isover"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static O00000Oo(Lcom/inter/china/fplay/O000000o/O0000O0o;)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000Oo:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 220
    :goto_0
    return-object v0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    const-string v1, "decode is error 4 : "

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    :try_start_1
    iget-object v1, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000Oo:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 215
    :catch_1
    move-exception v1

    .line 216
    const-string v1, "\u77ed\u4fe1\u53d1\u9001\u5931\u8d25 error "

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static O00000Oo(Landroid/content/Context;)[Lcom/inter/china/fplay/O000000o/O00000o;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 462
    const/4 v0, 0x0

    .line 463
    invoke-static {p0, v3}, Lcom/inter/china/fplay/O000000o/O00000o;->O000000o(Landroid/content/Context;I)Lcom/inter/china/fplay/O000000o/O00000o;

    move-result-object v1

    .line 464
    invoke-static {p0, v4}, Lcom/inter/china/fplay/O000000o/O00000o;->O000000o(Landroid/content/Context;I)Lcom/inter/china/fplay/O000000o/O00000o;

    move-result-object v2

    .line 465
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 466
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/inter/china/fplay/O000000o/O00000o;

    aput-object v1, v0, v3

    aput-object v2, v0, v4

    .line 467
    :cond_0
    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    .line 468
    new-array v0, v4, [Lcom/inter/china/fplay/O000000o/O00000o;

    aput-object v1, v0, v3

    .line 469
    :cond_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_2

    .line 470
    new-array v0, v4, [Lcom/inter/china/fplay/O000000o/O00000o;

    aput-object v2, v0, v3

    .line 471
    :cond_2
    return-object v0
.end method

.method private static O00000o0(Lcom/inter/china/fplay/O000000o/O0000O0o;)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 224
    iget-object v1, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000Oo:Ljava/lang/String;

    .line 227
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encode([BI)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 232
    :goto_0
    return-object v0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    const-string v2, "\u89e3\u7801\u5931\u8d25"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    goto :goto_0
.end method
