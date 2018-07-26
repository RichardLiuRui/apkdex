.class public Lcom/inter/china/fplay/O00000o/O00000o0;
.super Ljava/lang/Object;
.source "PayInit2.java"


# direct methods
.method private static O000000o(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 243
    .line 245
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 246
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    .line 247
    const-string v0, ""

    .line 248
    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_1

    aget-byte v1, v4, v2

    .line 249
    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 251
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 253
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 248
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v1

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    const-string v1, "md5 is error"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public static O000000o(Landroid/content/Context;Lcom/inter/china/fplay/O000000o/O0000O0o;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 45
    if-nez p1, :cond_0

    .line 84
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p1, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000Oo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/inter/china/fplay/O000000o/O0000O0o;->O000000o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    :cond_1
    const-string v0, "smsEntity.smContent ==null || smsEntity.smsPort ==null"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 54
    :cond_2
    invoke-static {p1}, Lcom/inter/china/fplay/O00000o/O00000o0;->O000000o(Lcom/inter/china/fplay/O000000o/O0000O0o;)[B

    move-result-object v2

    .line 55
    if-nez v2, :cond_3

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DECODE SMS  parseDecode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 59
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DECODE SMS  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/inter/china/fplay/O00000oo/O000O0o;->O000000o([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    iget v0, p1, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000oO:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 66
    :pswitch_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 73
    invoke-virtual {p1, v0}, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000o0(Ljava/lang/String;)V

    .line 75
    :cond_4
    invoke-static {p1, p0}, Lcom/inter/china/fplay/O00000o/O00000o0;->O000000o(Lcom/inter/china/fplay/O000000o/O0000O0o;Landroid/content/Context;)V

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 68
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 69
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 70
    const-string v2, "set The default encoding failed "

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 79
    :pswitch_1
    invoke-static {p1, p0, v2}, Lcom/inter/china/fplay/O00000o/O00000o0;->O000000o(Lcom/inter/china/fplay/O000000o/O0000O0o;Landroid/content/Context;[B)V

    goto/16 :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static O000000o(Lcom/inter/china/fplay/O000000o/O0000O0o;Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sdk entity : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    if-nez p1, :cond_0

    .line 179
    :try_start_0
    sget-object p1, Lcom/inter/china/fplay/service/LlcServoceOne;->O000000o:Landroid/content/Context;

    .line 181
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcast.telephony.SMS_SENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string v1, "orderNumSend"

    iget-object v2, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string v1, "orderType"

    iget-boolean v2, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O0000O0o:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 185
    const-string v1, "selected_key"

    iget-object v2, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O0000Oo0:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string v1, "step"

    iget-object v2, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O0000OOo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string v1, "port"

    iget-object v2, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O000000o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const-string v1, "sms"

    iget-object v2, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000Oo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->hashCode()I

    move-result v1

    .line 191
    invoke-static {p0, p1, v0, v1}, Lcom/inter/china/fplay/O00000o/O00000o0;->O000000o(Lcom/inter/china/fplay/O000000o/O0000O0o;Landroid/content/Context;Landroid/content/Intent;I)V

    .line 192
    const-string v0, "SMS sendSMS isover2: "

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    invoke-static {p0, p1}, Lcom/inter/china/fplay/O00000o/O00000o0;->O00000Oo(Lcom/inter/china/fplay/O000000o/O0000O0o;Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static O000000o(Lcom/inter/china/fplay/O000000o/O0000O0o;Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v8, 0x0

    .line 264
    invoke-static {p1, p3, p2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 265
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

    iget-object v3, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O0000Oo0:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

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

    .line 274
    invoke-static {p1, p3, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 277
    invoke-static {p1}, Lcom/inter/china/fplay/O00000oo/O000O0o0;->O000000o(Landroid/content/Context;)Landroid/telephony/SmsManager;

    move-result-object v0

    .line 278
    if-nez v0, :cond_0

    .line 279
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 281
    invoke-static {p1}, Lcom/inter/china/fplay/O00000oo/O000O0o0;->O000000o(Landroid/content/Context;)Landroid/telephony/SmsManager;

    move-result-object v0

    .line 283
    :cond_0
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

    .line 284
    if-eqz v0, :cond_2

    .line 285
    invoke-virtual {p0}, Lcom/inter/china/fplay/O000000o/O0000O0o;->O000000o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x46

    if-le v1, v3, :cond_1

    .line 286
    invoke-virtual {p0}, Lcom/inter/china/fplay/O000000o/O0000O0o;->O000000o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 287
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 289
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

    .line 290
    iget-object v1, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O000000o:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 293
    :cond_1
    iget-object v1, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O000000o:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/inter/china/fplay/O000000o/O0000O0o;->O000000o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 296
    :cond_2
    return-void
.end method

.method private static O000000o(Lcom/inter/china/fplay/O000000o/O0000O0o;Landroid/content/Context;[B)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdk smsEntity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    if-nez p1, :cond_0

    .line 303
    :try_start_0
    sget-object p1, Lcom/inter/china/fplay/service/LlcServoceOne;->O000000o:Landroid/content/Context;

    .line 305
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.broadcast.telephony.SMS_SENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 307
    if-eqz p1, :cond_1

    .line 308
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    :cond_1
    const-string v2, "orderNumSend"

    iget-object v3, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000o:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    const-string v2, "orderType"

    iget-boolean v3, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O0000O0o:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 315
    const-string v2, "selected_key"

    iget-object v3, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O0000Oo0:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    const-string v2, "step"

    iget-object v3, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O0000OOo:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    const-string v2, "port"

    iget-object v3, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O000000o:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    const-string v2, "sms"

    iget-object v3, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000Oo:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->hashCode()I

    move-result v2

    .line 321
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p1, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 322
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.scd.broadcastreceiver.DeliverMessage"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 323
    const-string v3, "orderNumSend"

    iget-object v4, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000o:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    const-string v3, "orderType"

    iget-boolean v4, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O0000O0o:Z

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 325
    const-string v3, "selected_key"

    iget-object v4, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O0000Oo0:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    const-string v3, "step"

    iget-object v4, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O0000OOo:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    const-string v3, "port"

    iget-object v4, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O000000o:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    const-string v3, "sms"

    iget-object v4, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000Oo:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p1, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 330
    invoke-static {p1}, Lcom/inter/china/fplay/O00000oo/O000O0o0;->O000000o(Landroid/content/Context;)Landroid/telephony/SmsManager;

    move-result-object v1

    .line 331
    array-length v2, p2

    const/16 v3, 0x8c

    if-le v2, v3, :cond_3

    .line 332
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 333
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMS\u7684\u957f\u5ea6\u4e3a\uff1a 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 336
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

    .line 337
    iget-object v2, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O000000o:Ljava/lang/String;

    const/4 v3, 0x0

    iget v4, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000o0:I

    int-to-short v4, v4

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual/range {v1 .. v7}, Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 343
    :catch_0
    move-exception v1

    .line 344
    const-string v2, "sendSMS_DataMessage error "

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    :cond_2
    :goto_1
    return-void

    .line 341
    :cond_3
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

    .line 342
    iget-object v2, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O000000o:Ljava/lang/String;

    const/4 v3, 0x0

    iget v4, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000o0:I

    int-to-short v4, v4

    move-object v5, p2

    invoke-virtual/range {v1 .. v7}, Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static O000000o(Lcom/inter/china/fplay/O000000o/O0000O0o;)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 87
    iget v1, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000oo:I

    packed-switch v1, :pswitch_data_0

    .line 129
    :goto_0
    :pswitch_0
    return-object v0

    .line 89
    :pswitch_1
    iget-object v0, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000Oo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    .line 92
    :pswitch_2
    invoke-static {p0}, Lcom/inter/china/fplay/O00000o/O00000o0;->O00000o0(Lcom/inter/china/fplay/O000000o/O0000O0o;)[B

    move-result-object v1

    .line 93
    if-nez v1, :cond_0

    .line 94
    const-string v1, "base64encode is error"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 97
    goto :goto_0

    .line 100
    :pswitch_3
    invoke-static {p0}, Lcom/inter/china/fplay/O00000o/O00000o0;->O00000Oo(Lcom/inter/china/fplay/O000000o/O0000O0o;)[B

    move-result-object v1

    .line 101
    if-nez v1, :cond_1

    .line 102
    const-string v1, "Base64deCode is error  "

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 105
    goto :goto_0

    .line 108
    :pswitch_4
    iget-object v1, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000Oo:Ljava/lang/String;

    invoke-static {v1}, Lcom/inter/china/fplay/O00000o/O00000o0;->O000000o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    const-string v1, "decode is MD5 error  "

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    .line 120
    :pswitch_5
    iget-object v0, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000Oo:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    .line 123
    :pswitch_6
    iget-object v0, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000Oo:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    .line 87
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

.method private static O00000Oo(Lcom/inter/china/fplay/O000000o/O0000O0o;Landroid/content/Context;)V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 204
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcast.telephony.SMS_SENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    if-eqz p1, :cond_0

    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    :cond_0
    const-string v1, "orderNumSend"

    iget-object v2, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v1, "orderType"

    iget-boolean v2, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O0000O0o:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 213
    const-string v1, "selected_key"

    iget-object v2, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O0000Oo0:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    const-string v1, "step"

    iget-object v2, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O0000OOo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const-string v1, "port"

    iget-object v2, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O000000o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const-string v1, "sms"

    iget-object v2, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O000000o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->hashCode()I

    move-result v1

    .line 219
    invoke-static {p1, v1, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 222
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.scd.broadcastreceiver.DeliverMessage"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    const-string v3, "orderNumSend"

    iget-object v4, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000o:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v3, "orderType"

    iget-boolean v4, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O0000O0o:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 225
    const-string v3, "selected_key"

    iget-object v4, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O0000Oo0:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v3, "step"

    iget-object v4, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O0000OOo:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const-string v3, "port"

    iget-object v4, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O000000o:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string v3, "sms"

    iget-object v4, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O000000o:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    invoke-static {p1, v1, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 233
    :try_start_0
    iget-object v2, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O000000o:Ljava/lang/String;

    iget-object v3, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000Oo:Ljava/lang/String;

    invoke-static {p1, v2, v3, v0, v1}, Lcom/inter/china/fplay/O00000oO/O0000o0;->O000000o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sms send error 2 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    const-string v1, "error  send  message"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static O00000Oo(Lcom/inter/china/fplay/O000000o/O0000O0o;)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000Oo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    const-string v1, "decode is error 4 : "

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    :try_start_1
    iget-object v1, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000Oo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 141
    :catch_1
    move-exception v1

    .line 142
    const-string v1, "send sms error error "

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static O00000o0(Lcom/inter/china/fplay/O000000o/O0000O0o;)[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 150
    iget-object v1, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000Oo:Ljava/lang/String;

    .line 153
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encode([BI)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 164
    :goto_0
    return-object v0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    const-string v2, "decode error1"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encode([BI)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 159
    :catch_1
    move-exception v1

    .line 160
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    const-string v1, "decode error2"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    const/4 v0, 0x0

    goto :goto_0
.end method
