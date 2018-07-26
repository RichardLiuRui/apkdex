.class public final Lcom/boJUF/mB/mB/VD/Kd;
.super Ljava/lang/Object;


# instance fields
.field private LA:Lcom/boJUF/mB/mB/pO/JO/tP/Ke;

.field private cp:Lcom/boJUF/mB/mB/pO/JO/tP/Ut;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/boJUF/mB/mB/VD/Kd;-><init>()V

    return-void
.end method

.method public static LA()Lcom/boJUF/mB/mB/VD/Kd;
    .locals 1

    invoke-static {}, Lcom/boJUF/mB/mB/VD/eV;->LA()Lcom/boJUF/mB/mB/VD/Kd;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final LA(Landroid/app/Application;Landroid/content/Intent;)V
    .locals 7

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "startMPay"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "moid"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/boJUF/mB/mB/Xd/oC;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/Xd/uI;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/boJUF/mB/mB/Xd/uI;->rC(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/boJUF/mB/mB/mB/uI;->LA(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "moid"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "payType"

    const-string v4, "MP"

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/boJUF/mB/mB/VD/qo;->LA()Lcom/boJUF/mB/mB/VD/Ke;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boJUF/mB/mB/VD/Ke;->cp()Landroid/os/Handler;

    move-result-object v0

    const/4 v4, 0x5

    const/16 v5, 0x83e

    const/4 v6, 0x0

    invoke-static {v0, v4, v5, v6, v3}, Lcom/boJUF/mB/mB/mB/uI;->LA(Landroid/os/Handler;IIILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-static {v1}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/pO/JO/tP/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->TP()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void

    :pswitch_2
    :try_start_1
    invoke-static {v1}, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/pO/ek/mB/uI;

    move-result-object v0

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->LA(I)V

    goto :goto_0

    :pswitch_3
    invoke-static {v1}, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/pO/Iy/tP/uI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->TP()V

    goto :goto_0

    :pswitch_4
    invoke-static {v1}, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/pO/Xd/tP/uI;

    move-result-object v0

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->cp(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final LA(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Lcom/boJUF/mB/mB/pO/tP/uI;->LA()Lcom/boJUF/mB/mB/pO/tP/uI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boJUF/mB/mB/pO/tP/uI;->cp()V

    new-instance v0, Lcom/boJUF/mB/mB/pO/JO/tP/Ke;

    invoke-direct {v0, p1}, Lcom/boJUF/mB/mB/pO/JO/tP/Ke;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/boJUF/mB/mB/VD/Kd;->LA:Lcom/boJUF/mB/mB/pO/JO/tP/Ke;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    invoke-static {}, Lcom/boJUF/mB/mB/pO/tP/oC;->LA()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Kd;->LA:Lcom/boJUF/mB/mB/pO/JO/tP/Ke;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/boJUF/mB/mB/pO/JO/tP/Ut;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/boJUF/mB/mB/pO/JO/tP/Ut;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/boJUF/mB/mB/VD/Kd;->cp:Lcom/boJUF/mB/mB/pO/JO/tP/Ut;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/boJUF/mB/mB/VD/Kd;->cp:Lcom/boJUF/mB/mB/pO/JO/tP/Ut;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final cp(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Kd;->LA:Lcom/boJUF/mB/mB/pO/JO/tP/Ke;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Kd;->LA:Lcom/boJUF/mB/mB/pO/JO/tP/Ke;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Kd;->cp:Lcom/boJUF/mB/mB/pO/JO/tP/Ut;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Kd;->cp:Lcom/boJUF/mB/mB/pO/JO/tP/Ut;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method
