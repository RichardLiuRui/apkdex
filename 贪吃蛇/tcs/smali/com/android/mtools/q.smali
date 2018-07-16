.class public final Lcom/android/mtools/q;
.super Ljava/lang/Object;


# static fields
.field private static aD:Lcom/android/mtools/q;


# instance fields
.field private J:Ljava/lang/String;

.field private X:Landroid/content/Context;

.field private aE:I

.field private handler:Landroid/os/Handler;

.field helper:Lcom/android/mtools/d;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mtools/q;->aE:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mtools/q;->J:Ljava/lang/String;

    new-instance v0, Lcom/android/mtools/r;

    invoke-direct {v0, p0}, Lcom/android/mtools/r;-><init>(Lcom/android/mtools/q;)V

    iput-object v0, p0, Lcom/android/mtools/q;->handler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/android/mtools/d;->a(Landroid/content/Context;)Lcom/android/mtools/d;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    iput-object p1, p0, Lcom/android/mtools/q;->X:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/mtools/q;->X:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mtools/m;->b(Landroid/content/Context;)Lcom/android/mtools/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mtools/m;->G()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mtools/q;->J:Ljava/lang/String;

    return-void
.end method

.method private C(Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-virtual {v0, p1}, Lcom/android/mtools/d;->d(Ljava/lang/String;)Lcom/android/mtools/f;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v0, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-virtual {v0, p1}, Lcom/android/mtools/d;->f(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mtools/e;

    invoke-virtual {v0}, Lcom/android/mtools/e;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "childOid = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/android/mtools/P;->V()V

    invoke-virtual {v0}, Lcom/android/mtools/e;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-virtual {v0, v1}, Lcom/android/mtools/d;->h(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sends  ==  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/android/mtools/P;->V()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mtools/h;

    invoke-direct {p0, v0}, Lcom/android/mtools/q;->b(Lcom/android/mtools/h;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {v0}, Lcom/android/mtools/e;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mtools/P;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "url"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "coid"

    invoke-virtual {v0}, Lcom/android/mtools/e;->k()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/mtools/a;

    iget-object v1, p0, Lcom/android/mtools/q;->X:Landroid/content/Context;

    const/4 v2, 0x3

    iget-object v4, p0, Lcom/android/mtools/q;->handler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/mtools/a;-><init>(Landroid/content/Context;ILjava/util/List;Landroid/os/Handler;I)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v8, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/mtools/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/mtools/MPay;->mPay:Lcom/android/mtools/MPay;

    if-eqz v1, :cond_3

    const/16 v1, 0x83e

    iget-object v2, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-static {v1, v6, v2}, Lcom/android/mtools/P;->a(ILcom/android/mtools/f;Lcom/android/mtools/d;)V

    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private D(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/android/mtools/P;->V()V

    iget-object v0, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-virtual {v0, p1}, Lcom/android/mtools/d;->i(Ljava/lang/String;)Lcom/android/mtools/k;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "date0"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "port"

    invoke-virtual {v0}, Lcom/android/mtools/k;->D()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "childOid"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "flag"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/android/mtools/q;->a(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/high16 v3, 0x8000000

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-virtual {v0, p2}, Lcom/android/mtools/d;->a(I)Lcom/android/mtools/h;

    move-result-object v0

    if-eqz p5, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p4, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/mtools/q;->c(Lcom/android/mtools/h;)V

    invoke-static {}, Lcom/android/mtools/P;->V()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "oid"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sendId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "slStr"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "==== type === "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "^^^^^^^^^^^^^^^^^ ==== sendSs === "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/android/mtools/P;->V()V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "SEND_SMS_ACTION1"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget v0, p0, Lcom/android/mtools/q;->aE:I

    add-int/lit16 v0, v0, 0x7d0

    iput v0, p0, Lcom/android/mtools/q;->aE:I

    iget-object v0, p0, Lcom/android/mtools/q;->X:Landroid/content/Context;

    iget v2, p0, Lcom/android/mtools/q;->aE:I

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "DELIVERED_SMS_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mtools/q;->X:Landroid/content/Context;

    iget v2, p0, Lcom/android/mtools/q;->aE:I

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    :try_start_0
    const-string v0, "1"

    invoke-virtual {v0, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u53d1\u9001data\u77ed\u4fe1\uff1a\n pp: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n pc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p5, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n \u7aef\u53e3\u53f7\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/android/mtools/P;->V()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-static {p5, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    move-object v1, p4

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-virtual {v0, p2, v7}, Lcom/android/mtools/d;->a(II)Z

    new-instance v0, Lcom/android/mtools/s;

    invoke-direct {v0, p0, p2, p3, p6}, Lcom/android/mtools/s;-><init>(Lcom/android/mtools/q;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/mtools/s;->start()V

    goto/16 :goto_0

    :cond_3
    :try_start_1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u53d1\u9001Text\u77ed\u4fe1\uff1a\n pp: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n pc: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/android/mtools/P;->V()V

    const/4 v3, 0x0

    move-object v2, p4

    move-object v4, p5

    invoke-virtual/range {v1 .. v6}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-virtual {v0, p3}, Lcom/android/mtools/d;->e(Ljava/lang/String;)Lcom/android/mtools/e;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x845

    iget-object v2, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-virtual {v0}, Lcom/android/mtools/e;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/mtools/d;->d(Ljava/lang/String;)Lcom/android/mtools/f;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-static {v1, v0, v2}, Lcom/android/mtools/P;->a(ILcom/android/mtools/f;Lcom/android/mtools/d;)V

    goto/16 :goto_0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 9

    iget-object v0, p0, Lcom/android/mtools/q;->X:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date0"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "port"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "childOid"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "flag"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v0, v3, v1, v2}, Lcom/android/mtools/P;->a(Landroid/content/ContentResolver;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/mtools/q;->X:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/mtools/q;->X:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=======  getSms  repeat =========== flag: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/android/mtools/P;->V()V

    const/16 v1, 0xb4

    if-ge v5, v1, :cond_2

    iget-object v1, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-virtual {v1, v4}, Lcom/android/mtools/d;->e(Ljava/lang/String;)Lcom/android/mtools/e;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/mtools/e;->r()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v5, 0x1

    invoke-static {v0, v4, v2, v1}, Lcom/android/mtools/P;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "body"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v7, "address"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u627e\u5230\u77ed\u4fe1\u2014\u2014content\uff1a"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/android/mtools/P;->V()V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u627e\u5230\u77ed\u4fe1\u2014\u2014number\uff1a"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/android/mtools/P;->V()V

    invoke-direct {p0, v0, v1}, Lcom/android/mtools/q;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/android/mtools/P;->V()V

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/android/mtools/P;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Lcom/android/mtools/h;ILjava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p3}, Lcom/android/mtools/q;->b(Lcom/android/mtools/h;ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mtools/q;->c(Lcom/android/mtools/h;)V

    goto :goto_0
.end method

.method private a(Lcom/android/mtools/k;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v2, 0x4

    invoke-virtual {p1}, Lcom/android/mtools/k;->k()Ljava/lang/String;

    move-result-object v6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "soid"

    invoke-direct {v0, v1, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "cp"

    invoke-direct {v0, v1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "content"

    invoke-direct {v0, v1, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "vmId"

    invoke-virtual {p1}, Lcom/android/mtools/k;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/mtools/a;

    iget-object v1, p0, Lcom/android/mtools/q;->X:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mtools/q;->handler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/mtools/a;-><init>(Landroid/content/Context;ILjava/util/List;Landroid/os/Handler;I)V

    invoke-virtual {v0}, Lcom/android/mtools/a;->a()V

    iget-object v0, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    const-string v1, "2"

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/mtools/d;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mtools/q;->X:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    iget-object v2, p0, Lcom/android/mtools/q;->handler:Landroid/os/Handler;

    invoke-static {v6, v0, v1, v2}, Lcom/android/mtools/P;->a(Ljava/lang/String;Landroid/content/Context;Lcom/android/mtools/d;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/mtools/q;Lcom/android/mtools/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mtools/q;->b(Lcom/android/mtools/h;)V

    return-void
.end method

.method static synthetic a(Lcom/android/mtools/q;Lcom/android/mtools/h;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0, p3}, Lcom/android/mtools/q;->b(Lcom/android/mtools/h;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/android/mtools/q;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;)V
    .locals 6

    const-string v0, "SEND_SMS_ACTION1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    const-string v0, "sendId"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "oid"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "slStr"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-virtual {v3, v0}, Lcom/android/mtools/d;->a(I)Lcom/android/mtools/h;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sendId  ~~~~~ "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/android/mtools/P;->V()V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "oid  ~~~~~ "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/android/mtools/P;->V()V

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/mtools/h;->u()I

    move-result v4

    if-nez v4, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Lcom/android/mtools/h;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/mtools/P;->V()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u77ed\u4fe1\u53d1\u9001-------------resultCode1="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/android/mtools/P;->V()V

    iget-object v0, p0, Lcom/android/mtools/q;->X:Landroid/content/Context;

    invoke-direct {p0, v3, p2, v2}, Lcom/android/mtools/q;->a(Lcom/android/mtools/h;ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/mtools/P;->V()V

    iget-object v3, p0, Lcom/android/mtools/q;->X:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sendBroadcast~~~~~~resultCode="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/android/mtools/P;->V()V

    new-instance v4, Landroid/content/Intent;

    const-string v5, "SEND_SMS_ACTION2"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "rCode"

    invoke-virtual {v4, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "sendId"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "oid"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "slStr"

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v0, "SEND_SMS_ACTION2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sendId"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "oid"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "slStr"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-virtual {v3, v0}, Lcom/android/mtools/d;->a(I)Lcom/android/mtools/h;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sendId ---------"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/android/mtools/P;->V()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "oid  -----------"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/android/mtools/P;->V()V

    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/mtools/h;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u77ed\u4fe1\u53d1\u9001-------------resultCode2="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/android/mtools/P;->V()V

    iget-object v0, p0, Lcom/android/mtools/q;->X:Landroid/content/Context;

    invoke-direct {p0, v3, p2, v2}, Lcom/android/mtools/q;->a(Lcom/android/mtools/h;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/android/mtools/P;->V()V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/android/mtools/q;Ljava/util/HashMap;)V
    .locals 6

    const-string v0, "coid"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "status"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-virtual {v2, v0}, Lcom/android/mtools/d;->e(Ljava/lang/String;)Lcom/android/mtools/e;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    const/4 v4, 0x2

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/mtools/d;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mtools/q;->X:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    iget-object v5, p0, Lcom/android/mtools/q;->handler:Landroid/os/Handler;

    invoke-static {v0, v3, v4, v5}, Lcom/android/mtools/P;->a(Ljava/lang/String;Landroid/content/Context;Lcom/android/mtools/d;Landroid/os/Handler;)V

    :cond_0
    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/mtools/P;->V()V

    iget-object v1, p0, Lcom/android/mtools/q;->X:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/mtools/q;->X:Landroid/content/Context;

    const-class v5, Lcom/android/mtools/MPService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/mtools/q;->D(Ljava/lang/String;)V

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/mtools/e;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-virtual {v0}, Lcom/android/mtools/d;->j()Lcom/android/mtools/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mtools/k;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/mtools/k;->E()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    if-eqz v2, :cond_2

    const-string v1, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, ""

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mtools/q;->a(Lcom/android/mtools/k;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string v0, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/mtools/MPay;->mPay:Lcom/android/mtools/MPay;

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-virtual {v2}, Lcom/android/mtools/e;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mtools/d;->d(Ljava/lang/String;)Lcom/android/mtools/f;

    move-result-object v0

    const/16 v1, 0x840

    iget-object v2, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-static {v1, v0, v2}, Lcom/android/mtools/P;->a(ILcom/android/mtools/f;Lcom/android/mtools/d;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/BroadcastReceiver;)Z
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/android/mtools/q;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/content/BroadcastReceiver;->abortBroadcast()V

    :cond_0
    iget-object v0, p0, Lcom/android/mtools/q;->X:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/mtools/P;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return p3

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/mtools/q;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isShield = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/android/mtools/P;->V()V

    if-eqz v0, :cond_1

    const/4 p3, 0x1

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Landroid/content/BroadcastReceiver;->abortBroadcast()V

    :cond_3
    iget-object v0, p0, Lcom/android/mtools/q;->X:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/mtools/P;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;ZLcom/android/mtools/i;)Z
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    return p3

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/mtools/P;->V()V

    invoke-virtual {p4}, Lcom/android/mtools/i;->k()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-virtual {v0, v2}, Lcom/android/mtools/d;->e(Ljava/lang/String;)Lcom/android/mtools/e;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/mtools/e;->l()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-virtual {v4, v0}, Lcom/android/mtools/d;->d(Ljava/lang/String;)Lcom/android/mtools/f;

    move-result-object v4

    iget-object v0, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-static {v0, v6}, Lcom/android/mtools/P;->a(Lcom/android/mtools/d;Z)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v5, "b"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_1
    packed-switch v3, :pswitch_data_0

    :goto_2
    move p3, v1

    goto :goto_0

    :pswitch_0
    iget-object v3, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-virtual {p4}, Lcom/android/mtools/i;->getId()I

    move-result v5

    const/4 v6, 0x3

    invoke-virtual {v3, v5, v6}, Lcom/android/mtools/d;->c(II)Z

    iget-object v3, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-virtual {v3, v2, v7}, Lcom/android/mtools/d;->a(Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    const-string v5, "2"

    invoke-virtual {v3, v2, v5, v8}, Lcom/android/mtools/d;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mtools/q;->X:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    iget-object v6, p0, Lcom/android/mtools/q;->handler:Landroid/os/Handler;

    invoke-static {v2, v3, v5, v6}, Lcom/android/mtools/P;->a(Ljava/lang/String;Landroid/content/Context;Lcom/android/mtools/d;Landroid/os/Handler;)V

    :cond_2
    if-nez v0, :cond_3

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/mtools/f;->y()I

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x838

    iget-object v2, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-static {v0, v4, v2}, Lcom/android/mtools/P;->a(ILcom/android/mtools/f;Lcom/android/mtools/d;)V

    :cond_3
    invoke-static {}, Lcom/android/mtools/P;->V()V

    move p3, v1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-virtual {p4}, Lcom/android/mtools/i;->getId()I

    move-result v3

    invoke-virtual {v0, v3, v7}, Lcom/android/mtools/d;->c(II)Z

    iget-object v0, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    const-string v3, "1"

    invoke-virtual {v0, v2, v3, v8}, Lcom/android/mtools/d;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mtools/q;->X:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    iget-object v5, p0, Lcom/android/mtools/q;->handler:Landroid/os/Handler;

    invoke-static {v2, v0, v3, v5}, Lcom/android/mtools/P;->a(Ljava/lang/String;Landroid/content/Context;Lcom/android/mtools/d;Landroid/os/Handler;)V

    :cond_4
    iget-object v0, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    iget-object v3, p0, Lcom/android/mtools/q;->X:Landroid/content/Context;

    invoke-static {v4, v2, v6, v0}, Lcom/android/mtools/P;->a(Lcom/android/mtools/f;Ljava/lang/String;ZLcom/android/mtools/d;)V

    invoke-static {}, Lcom/android/mtools/P;->V()V

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "\u5c4f\u853d\u77ed\u4fe1---------------\u627e\u4e0d\u5230\u5bf9\u5e94\u5b50\u8ba2\u5355\u4fe1\u606f  childOid="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/android/mtools/P;->V()V

    move p3, v1

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(Lcom/android/mtools/h;)V
    .locals 10

    invoke-virtual {p1}, Lcom/android/mtools/h;->getId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/mtools/h;->getType()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/mtools/h;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mtools/h;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mtools/P;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u5f00\u59cb\u652f\u4ed8\u5b50\u8ba2\u5355  >>>>>^^<<<<< \nsend.id ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\noid =="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#############"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/android/mtools/P;->V()V

    :cond_0
    :goto_0
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "pp"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "pc"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "isEncode"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "\u53d1\u9001\u77ed\u4fe1\uff1a\n pp: "

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "\n pc: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "\n b: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/android/mtools/P;->V()V

    const-string v0, "sl"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "sl"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    :cond_1
    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/mtools/q;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_2
    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u5f00\u59cb\u4e8c\u6b21\u4e0a\u884c\nsend.id ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\noid =="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#############"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/android/mtools/P;->V()V

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-virtual {v1, v3}, Lcom/android/mtools/d;->e(Ljava/lang/String;)Lcom/android/mtools/e;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-virtual {v1}, Lcom/android/mtools/e;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/mtools/d;->d(Ljava/lang/String;)Lcom/android/mtools/f;

    move-result-object v1

    const/16 v2, 0x83a

    iget-object v3, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-static {v2, v1, v3}, Lcom/android/mtools/P;->a(ILcom/android/mtools/f;Lcom/android/mtools/d;)V

    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private b(Lcom/android/mtools/h;ILjava/lang/String;)V
    .locals 12

    const/4 v10, 0x2

    const/4 v9, 0x3

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/android/mtools/h;->k()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-virtual {p1}, Lcom/android/mtools/h;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/android/mtools/d;->a(II)Z

    invoke-virtual {p1}, Lcom/android/mtools/h;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mtools/P;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "pp"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "pc"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mtools/q;->X:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mtools/m;->b(Landroid/content/Context;)Lcom/android/mtools/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mtools/m;->G()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "@@@@@@@@@  md5\u524d\uff1aimsi="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&port="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&flag=1&content="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&secKey=#$(E23.@!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/android/mtools/P;->V()V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "imsi="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&port="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&flag=1&content="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&secKey=#$(E23.@!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mtools/l;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "@@@@@@@@@  md5\u540e:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/android/mtools/P;->V()V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "imsi="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "&port="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "&flag=1&content="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "&sign="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mtools/c;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "@@@@@@@@ base64\uff1a"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/android/mtools/P;->V()V

    iget-object v1, p0, Lcom/android/mtools/q;->X:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v4, v3}, Lcom/android/mtools/P;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    invoke-virtual {p1}, Lcom/android/mtools/h;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "$$$$$$$$$\u521d\u59cb\u5316\u77ed\u4fe1\u53d1\u9001\u6210\u529f  flag="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/android/mtools/P;->V()V

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    :try_start_2
    invoke-static {}, Lcom/android/mtools/P;->V()V

    invoke-static {v0}, Lcom/a/a/a;->G(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mtools/q;->X:Landroid/content/Context;

    const-string v1, "getFlag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isNeed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :pswitch_1
    invoke-static {}, Lcom/android/mtools/P;->V()V

    iget-object v0, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    const-string v1, "1"

    invoke-virtual {v0, v2, v1, v10}, Lcom/android/mtools/d;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mtools/q;->X:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    iget-object v3, p0, Lcom/android/mtools/q;->handler:Landroid/os/Handler;

    invoke-static {v2, v0, v1, v3}, Lcom/android/mtools/P;->a(Ljava/lang/String;Landroid/content/Context;Lcom/android/mtools/d;Landroid/os/Handler;)V

    :cond_1
    iget-object v0, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-virtual {v0, v2}, Lcom/android/mtools/d;->e(Ljava/lang/String;)Lcom/android/mtools/e;

    move-result-object v0

    if-eqz p3, :cond_3

    const-string v1, ""

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/mtools/P;->V()V

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-virtual {v3, v2, v10}, Lcom/android/mtools/d;->b(Ljava/lang/String;I)Lcom/android/mtools/h;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/mtools/P;->V()V

    new-instance v0, Lcom/android/mtools/v;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/mtools/v;-><init>(Lcom/android/mtools/q;ILcom/android/mtools/h;)V

    invoke-virtual {v0}, Lcom/android/mtools/v;->start()V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/mtools/P;->V()V

    iget-object v1, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-virtual {v0}, Lcom/android/mtools/e;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/mtools/d;->d(Ljava/lang/String;)Lcom/android/mtools/f;

    move-result-object v0

    const/16 v1, 0x839

    iget-object v2, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-static {v1, v0, v2}, Lcom/android/mtools/P;->a(ILcom/android/mtools/f;Lcom/android/mtools/d;)V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/android/mtools/e;->getType()I

    move-result v1

    if-eq v1, v9, :cond_4

    invoke-virtual {v0}, Lcom/android/mtools/e;->getType()I

    move-result v1

    const/4 v3, 0x6

    if-ne v1, v3, :cond_7

    :cond_4
    invoke-static {}, Lcom/android/mtools/P;->V()V

    iget-object v1, p0, Lcom/android/mtools/q;->X:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/mtools/q;->X:Landroid/content/Context;

    const-class v5, Lcom/android/mtools/MPService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-direct {p0, v2}, Lcom/android/mtools/q;->D(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/mtools/e;->getType()I

    move-result v0

    if-ne v0, v9, :cond_0

    iget-object v0, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-virtual {v0, v2}, Lcom/android/mtools/d;->i(Ljava/lang/String;)Lcom/android/mtools/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mtools/k;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/mtools/k;->E()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_5

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    if-eqz v2, :cond_6

    const-string v1, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    const-string v1, ""

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mtools/q;->a(Lcom/android/mtools/k;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    iget-object v1, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-virtual {v0}, Lcom/android/mtools/e;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/mtools/d;->d(Ljava/lang/String;)Lcom/android/mtools/f;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-static {v0, v8}, Lcom/android/mtools/P;->a(Lcom/android/mtools/d;Z)Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "b"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    iget-object v3, p0, Lcom/android/mtools/q;->X:Landroid/content/Context;

    invoke-static {v1, v2, v8, v0}, Lcom/android/mtools/P;->a(Lcom/android/mtools/f;Ljava/lang/String;ZLcom/android/mtools/d;)V

    goto/16 :goto_1

    :pswitch_2
    invoke-static {}, Lcom/android/mtools/P;->V()V

    iget-object v0, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    const-string v1, "1"

    invoke-virtual {v0, v2, v1, v9}, Lcom/android/mtools/d;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/mtools/q;->X:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    iget-object v3, p0, Lcom/android/mtools/q;->handler:Landroid/os/Handler;

    invoke-static {v2, v0, v1, v3}, Lcom/android/mtools/P;->a(Ljava/lang/String;Landroid/content/Context;Lcom/android/mtools/d;Landroid/os/Handler;)V

    :cond_8
    iget-object v0, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-virtual {v0, v2}, Lcom/android/mtools/d;->e(Ljava/lang/String;)Lcom/android/mtools/e;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-virtual {v0}, Lcom/android/mtools/e;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/mtools/d;->d(Ljava/lang/String;)Lcom/android/mtools/f;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-static {v0, v8}, Lcom/android/mtools/P;->a(Lcom/android/mtools/d;Z)Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "b"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    iget-object v3, p0, Lcom/android/mtools/q;->X:Landroid/content/Context;

    invoke-static {v1, v2, v8, v0}, Lcom/android/mtools/P;->a(Lcom/android/mtools/f;Ljava/lang/String;ZLcom/android/mtools/d;)V

    goto/16 :goto_1

    :catch_2
    move-exception v1

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lcom/android/mtools/q;Ljava/util/HashMap;)V
    .locals 14

    const-string v0, "resultCode"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v0, "childOid"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "data"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "vmId"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-virtual {v4, v0}, Lcom/android/mtools/d;->e(Ljava/lang/String;)Lcom/android/mtools/e;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-virtual {v0}, Lcom/android/mtools/e;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/mtools/d;->d(Ljava/lang/String;)Lcom/android/mtools/f;

    move-result-object v0

    move-object v9, v0

    :goto_0
    const/4 v0, 0x1

    if-ne v3, v0, :cond_4

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "soid"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pp"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v1, "pc"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v1, "bkList"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    if-eqz v11, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/mtools/P;->a(Lcom/android/mtools/d;Z)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "b"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    iget-object v3, p0, Lcom/android/mtools/q;->X:Landroid/content/Context;

    invoke-static {v9, v0, v1, v2}, Lcom/android/mtools/P;->a(Lcom/android/mtools/f;Ljava/lang/String;ZLcom/android/mtools/d;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v10, v1}, Lcom/android/mtools/d;->b(II)Z

    :goto_2
    return-void

    :cond_2
    :try_start_1
    const-string v8, ""

    const-string v1, "b"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "b"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "pp"

    invoke-virtual {v1, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "pc"

    invoke-virtual {v1, v2, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "isEncode"

    invoke-virtual {v1, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/mtools/P;->U()J

    move-result-wide v4

    const/4 v1, 0x2

    const/4 v3, -0x1

    iget-object v6, p0, Lcom/android/mtools/q;->X:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-static/range {v0 .. v7}, Lcom/android/mtools/P;->a(Ljava/lang/String;ILjava/lang/String;IJLandroid/content/Context;Lcom/android/mtools/d;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-virtual {v1, v4, v5}, Lcom/android/mtools/d;->c(J)I

    move-result v3

    const/4 v2, 0x2

    const/4 v7, 0x0

    move-object v1, p0

    move-object v4, v0

    move-object v5, v11

    move-object v6, v12

    invoke-direct/range {v1 .. v8}, Lcom/android/mtools/q;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    iget-object v2, p0, Lcom/android/mtools/q;->X:Landroid/content/Context;

    invoke-static {v13, v0, v1, v2}, Lcom/android/mtools/P;->a(Lorg/json/JSONArray;Ljava/lang/String;Lcom/android/mtools/d;Landroid/content/Context;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/16 v1, 0x842

    iget-object v2, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-static {v1, v9, v2}, Lcom/android/mtools/P;->a(ILcom/android/mtools/f;Lcom/android/mtools/d;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_4
    const/16 v0, 0x841

    iget-object v1, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-static {v0, v9, v1}, Lcom/android/mtools/P;->a(ILcom/android/mtools/f;Lcom/android/mtools/d;)V

    goto :goto_2

    :cond_5
    move-object v9, v2

    goto/16 :goto_0
.end method

.method private c(Lcom/android/mtools/h;)V
    .locals 5

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-virtual {p1}, Lcom/android/mtools/h;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v4}, Lcom/android/mtools/d;->a(II)Z

    invoke-virtual {p1}, Lcom/android/mtools/h;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-virtual {v1, v0}, Lcom/android/mtools/d;->e(Ljava/lang/String;)Lcom/android/mtools/e;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mtools/h;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/mtools/h;->getType()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-virtual {v1}, Lcom/android/mtools/e;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mtools/d;->d(Ljava/lang/String;)Lcom/android/mtools/f;

    move-result-object v0

    const/16 v1, 0x837

    iget-object v2, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-static {v1, v0, v2}, Lcom/android/mtools/P;->a(ILcom/android/mtools/f;Lcom/android/mtools/d;)V

    :cond_1
    return-void

    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u77ed\u4fe1\u53d1\u9001\u5931\u8d25-----------\u4e00\u6b21\u4e0a\u884c  cOrder== "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/android/mtools/P;->V()V

    iget-object v2, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    const-string v3, "2"

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/mtools/d;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mtools/q;->X:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    iget-object v4, p0, Lcom/android/mtools/q;->handler:Landroid/os/Handler;

    invoke-static {v0, v2, v3, v4}, Lcom/android/mtools/P;->a(Ljava/lang/String;Landroid/content/Context;Lcom/android/mtools/d;Landroid/os/Handler;)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/android/mtools/P;->V()V

    iget-object v2, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    const-string v3, "2"

    const/4 v4, 0x3

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/mtools/d;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mtools/q;->X:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    iget-object v4, p0, Lcom/android/mtools/q;->handler:Landroid/os/Handler;

    invoke-static {v0, v2, v3, v4}, Lcom/android/mtools/P;->a(Ljava/lang/String;Landroid/content/Context;Lcom/android/mtools/d;Landroid/os/Handler;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static d(Landroid/content/Context;)Lcom/android/mtools/q;
    .locals 1

    sget-object v0, Lcom/android/mtools/q;->aD:Lcom/android/mtools/q;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mtools/q;

    invoke-direct {v0, p0}, Lcom/android/mtools/q;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mtools/q;->aD:Lcom/android/mtools/q;

    :cond_0
    sget-object v0, Lcom/android/mtools/q;->aD:Lcom/android/mtools/q;

    return-object v0
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/mtools/P;->V()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-virtual {v1}, Lcom/android/mtools/d;->d()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "\u9a8c\u8bc1\u7801------------vms="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/android/mtools/P;->V()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v0

    move v2, v3

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "port="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&content="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mtools/l;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-virtual {v1}, Lcom/android/mtools/k;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/android/mtools/d;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/android/mtools/j;

    move-result-object v0

    iget-object v4, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-virtual {v4, v0}, Lcom/android/mtools/d;->a(Lcom/android/mtools/j;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-virtual {v1}, Lcom/android/mtools/k;->getId()I

    move-result v4

    invoke-virtual {v0, v4, v3}, Lcom/android/mtools/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/android/mtools/k;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    const-string v4, "1"

    const/4 v5, 0x4

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/mtools/d;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mtools/q;->X:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    iget-object v5, p0, Lcom/android/mtools/q;->handler:Landroid/os/Handler;

    invoke-static {v0, v3, v4, v5}, Lcom/android/mtools/P;->a(Ljava/lang/String;Landroid/content/Context;Lcom/android/mtools/d;Landroid/os/Handler;)V

    :cond_1
    invoke-static {}, Lcom/android/mtools/P;->V()V

    invoke-direct {p0, v1, p1, p2}, Lcom/android/mtools/q;->a(Lcom/android/mtools/k;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v2

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mtools/k;

    invoke-virtual {v0}, Lcom/android/mtools/k;->D()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/mtools/k;->E()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u9a8c\u8bc1\u7801------------\n cp: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n ck: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/android/mtools/P;->V()V

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/mtools/P;->V()V

    if-eqz v7, :cond_4

    const-string v6, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/mtools/k;->getId()I

    move-result v6

    invoke-virtual {v0}, Lcom/android/mtools/k;->getId()I

    move-result v7

    if-ge v6, v7, :cond_0

    :cond_5
    move-object v1, v0

    move v2, v4

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/android/mtools/k;->getId()I

    move-result v6

    invoke-virtual {v0}, Lcom/android/mtools/k;->getId()I

    move-result v7

    if-ge v6, v7, :cond_0

    :cond_7
    move-object v1, v0

    move v2, v4

    goto/16 :goto_0
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/mtools/P;->V()V

    iget-object v0, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-virtual {v0}, Lcom/android/mtools/d;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    return v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mtools/i;

    invoke-virtual {v0}, Lcom/android/mtools/i;->A()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/mtools/P;->V()V

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/android/mtools/i;->B()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {p0, v3, p2, v4, v0}, Lcom/android/mtools/q;->a(Lorg/json/JSONObject;Ljava/lang/String;ZLcom/android/mtools/i;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "init"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "i"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "pc"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "**************\u521d\u59cb\u5316\u5566~~~1111~~\n pp: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n pc: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/android/mtools/P;->V()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "imsi="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mtools/q;->J:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&port="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&flag=0&content="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&secKey=#$(E23.@!!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mtools/l;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "imsi="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/mtools/q;->J:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&port="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&flag=0&content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&sign="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mtools/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lcom/android/mtools/P;->V()V

    invoke-static {v0}, Lcom/a/a/a;->G(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v0, "pp"

    invoke-virtual {v2, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "pc"

    invoke-virtual {v2, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/mtools/P;->U()J

    move-result-wide v4

    const-string v0, ""

    iget-object v6, p0, Lcom/android/mtools/q;->X:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    move v3, v1

    invoke-static/range {v0 .. v7}, Lcom/android/mtools/P;->a(Ljava/lang/String;ILjava/lang/String;IJLandroid/content/Context;Lcom/android/mtools/d;)Z

    iget-object v0, p0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    invoke-virtual {v0, v4, v5}, Lcom/android/mtools/d;->c(J)I

    move-result v2

    const-string v3, ""

    const-string v7, ""

    move-object v0, p0

    move-object v4, v8

    move-object v5, v9

    move-object v6, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/mtools/q;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_1
    const-string v2, "pay"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "oid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mtools/q;->C(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v2, "getSmss"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mtools/q;->X:Landroid/content/Context;

    invoke-static {}, Lcom/android/mtools/P;->V()V

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mtools/P;->a(Landroid/content/ContentResolver;)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v0, "address"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "body"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8bfb\u53d6\u5230\u4e00\u6761\u4fe1\u606f\uff0c   port:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/android/mtools/P;->V()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8bfb\u53d6\u5230\u4e00\u6761\u4fe1\u606f\uff0ccontent:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/android/mtools/P;->V()V

    invoke-direct {p0, v0, v2, v1, v10}, Lcom/android/mtools/q;->a(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/BroadcastReceiver;)Z

    goto :goto_2
.end method

.method public final a(Landroid/content/Intent;ILandroid/content/BroadcastReceiver;)Z
    .locals 12

    const/4 v11, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v0, "SEND_SMS_ACTION1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/mtools/t;

    move-object v1, p0

    move v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mtools/t;-><init>(Lcom/android/mtools/q;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;)V

    invoke-virtual {v0}, Lcom/android/mtools/t;->start()V

    :cond_0
    :goto_0
    return v11

    :cond_1
    const-string v0, "SEND_SMS_ACTION2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v5, Lcom/android/mtools/u;

    move-object v6, p0

    move-object v7, p1

    move-object v8, v2

    move-object v9, v4

    move-object v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/mtools/u;-><init>(Lcom/android/mtools/q;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;)V

    invoke-virtual {v5}, Lcom/android/mtools/u;->start()V

    goto :goto_0

    :cond_2
    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v4, :cond_0

    const-string v0, "pdus"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const-string v2, ""

    const-string v1, ""

    move-object v3, v1

    move-object v1, v2

    move v2, v11

    :goto_1
    array-length v4, v0

    if-lt v2, v4, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u6536\u5230\u4e00\u6761\u77ed\u4fe1\uff1a\n port: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/android/mtools/P;->V()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "content\uff1a"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/android/mtools/P;->V()V

    invoke-direct {p0, v1, v3, v11, p3}, Lcom/android/mtools/q;->a(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/BroadcastReceiver;)Z

    goto :goto_0

    :cond_3
    aget-object v1, v0, v2

    check-cast v1, [B

    invoke-static {v1}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v4

    goto :goto_1

    :cond_4
    const-string v0, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GET_SMS_ACTION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v4}, Lcom/android/mtools/q;->a(Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method
