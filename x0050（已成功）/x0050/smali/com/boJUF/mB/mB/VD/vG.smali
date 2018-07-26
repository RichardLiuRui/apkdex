.class public Lcom/boJUF/mB/mB/VD/vG;
.super Ljava/lang/Object;


# static fields
.field private static volatile cp:Lcom/boJUF/mB/mB/VD/vG;


# instance fields
.field private IL:Landroid/os/Handler;

.field private LA:Landroid/content/Context;

.field private Lx:Landroid/os/Handler;

.field private On:Ljava/lang/String;

.field private TP:Ljava/lang/String;

.field private na:Ljava/lang/String;

.field private oC:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/boJUF/mB/mB/VD/vG;->On:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/boJUF/mB/mB/VD/vG;->TP:Ljava/lang/String;

    const-string v0, "miiInitHt"

    iput-object v0, p0, Lcom/boJUF/mB/mB/VD/vG;->na:Ljava/lang/String;

    iput-object v1, p0, Lcom/boJUF/mB/mB/VD/vG;->oC:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/boJUF/mB/mB/VD/vG;->IL:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/boJUF/mB/mB/VD/vG;->LA:Landroid/content/Context;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/vG;->Lx:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/vG;->Lx:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/boJUF/mB/mB/VD/vG;->Lx:Landroid/os/Handler;

    :cond_0
    new-instance v0, Lcom/boJUF/mB/mB/VD/uH;

    invoke-direct {v0, p0}, Lcom/boJUF/mB/mB/VD/uH;-><init>(Lcom/boJUF/mB/mB/VD/vG;)V

    iput-object v0, p0, Lcom/boJUF/mB/mB/VD/vG;->Lx:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/boJUF/mB/mB/VD/vG;->On()Z

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/vG;->LA:Landroid/content/Context;

    invoke-static {v0}, Lcom/boJUF/mB/mB/Xd/oC;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/Xd/uI;

    invoke-static {}, Lcom/boJUF/mB/mB/VD/uI;->LA()Lcom/boJUF/mB/mB/VD/uI;

    move-result-object v0

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/vG;->LA:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/boJUF/mB/mB/VD/uI;->LA(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic LA(Lcom/boJUF/mB/mB/VD/vG;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/vG;->LA:Landroid/content/Context;

    return-object v0
.end method

.method public static LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/VD/vG;
    .locals 2

    sget-object v0, Lcom/boJUF/mB/mB/VD/vG;->cp:Lcom/boJUF/mB/mB/VD/vG;

    if-nez v0, :cond_1

    const-class v1, Lcom/boJUF/mB/mB/VD/vG;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/boJUF/mB/mB/VD/vG;->cp:Lcom/boJUF/mB/mB/VD/vG;

    if-nez v0, :cond_0

    new-instance v0, Lcom/boJUF/mB/mB/VD/vG;

    invoke-direct {v0, p0}, Lcom/boJUF/mB/mB/VD/vG;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/boJUF/mB/mB/VD/vG;->cp:Lcom/boJUF/mB/mB/VD/vG;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/boJUF/mB/mB/VD/vG;->cp:Lcom/boJUF/mB/mB/VD/vG;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private LA(Ljava/util/HashMap;)Lcom/boJUF/mB/mB/mB/Ut;
    .locals 7

    new-instance v1, Lcom/boJUF/mB/mB/mB/Ut;

    invoke-direct {v1}, Lcom/boJUF/mB/mB/mB/Ut;-><init>()V

    invoke-static {p1}, Lcom/boJUF/mB/mB/mB/uI;->LA(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string v0, "needMobile"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/boJUF/mB/mB/mB/Ut;->na(I)V

    const-string v0, "quickFeedback"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/boJUF/mB/mB/mB/Ut;->oC(I)V

    const-string v0, "needConfirm"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/boJUF/mB/mB/mB/Ut;->IL(I)V

    const-string v0, "smsCat"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/boJUF/mB/mB/mB/Ut;->Lx(Ljava/lang/String;)V

    const-string v0, "showResultUI"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/boJUF/mB/mB/mB/Ut;->Lx(I)V

    const-string v0, "needUpdateDomain"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/boJUF/mB/mB/mB/Ut;->VY(I)V

    const-string v0, "showLoading"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/boJUF/mB/mB/mB/Ut;->sj(I)V

    const-string v0, "preMobile"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/boJUF/mB/mB/mB/Ut;->bh(I)V

    const-string v0, "logCount"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/boJUF/mB/mB/mB/Ut;->rC(I)V

    const-string v0, "yfId"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/boJUF/mB/mB/mB/Ut;->cp(Ljava/lang/String;)V

    const-string v0, "yjId"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/boJUF/mB/mB/mB/Ut;->On(Ljava/lang/String;)V

    const-string v0, "zzDId"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/boJUF/mB/mB/mB/Ut;->TP(Ljava/lang/String;)V

    const-string v0, "zzAId"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/boJUF/mB/mB/mB/Ut;->na(Ljava/lang/String;)V

    const-string v0, "zzSec"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/boJUF/mB/mB/mB/Ut;->oC(Ljava/lang/String;)V

    const-string v0, "availablePayType"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/boJUF/mB/mB/mB/Ut;->IL(Ljava/lang/String;)V

    const-string v0, "goods"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    invoke-static {v0}, Lcom/boJUF/mB/mB/mB/uI;->On(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/boJUF/mB/mB/mB/uI;->LA(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/boJUF/mB/mB/VD/vG;->LA:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/boJUF/mB/mB/VD/vG;->LA(Ljava/lang/Exception;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    :try_start_2
    const-string v0, "uploadUserPhoneInfo"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/boJUF/mB/mB/mB/Ut;->On(I)V

    const-string v0, "catCmd"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/boJUF/mB/mB/mB/Ut;->LA(Ljava/lang/String;)V

    const-string v0, "vc_timeout"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/boJUF/mB/mB/mB/Ut;->LA(I)V

    const-string v0, "payment_interval"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/boJUF/mB/mB/mB/Ut;->cp(I)V

    const-string v0, "ydSendLogUtil"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    move-object v0, v1

    goto/16 :goto_0

    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/boJUF/mB/mB/mB/uI;->LA(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/boJUF/mB/mB/VD/vG;->LA:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/boJUF/mB/mB/VD/vG;->LA(Ljava/lang/Exception;Landroid/content/Context;)V

    :cond_3
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    invoke-static {v4}, Lcom/boJUF/mB/mB/mB/uI;->cp(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v4}, Lcom/boJUF/mB/mB/mB/uI;->LA(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/boJUF/mB/mB/VD/vG;->LA:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/boJUF/mB/mB/VD/vG;->LA(Ljava/lang/Exception;Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v2, p0, Lcom/boJUF/mB/mB/VD/vG;->LA:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/boJUF/mB/mB/VD/vG;->LA(Ljava/lang/Exception;Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_5
    :try_start_5
    invoke-static {v4}, Lcom/boJUF/mB/mB/VD/vG;->cp(Ljava/util/HashMap;)Lcom/boJUF/mB/mB/mB/ac;

    move-result-object v4

    iget-object v5, p0, Lcom/boJUF/mB/mB/VD/vG;->LA:Landroid/content/Context;

    invoke-static {v5}, Lcom/boJUF/mB/mB/Xd/oC;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/Xd/uI;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/boJUF/mB/mB/Xd/uI;->cp(Lcom/boJUF/mB/mB/mB/ac;)I

    move-result v6

    if-gtz v6, :cond_3

    invoke-virtual {v5, v4}, Lcom/boJUF/mB/mB/Xd/uI;->LA(Lcom/boJUF/mB/mB/mB/ac;)J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4
.end method

.method private static LA(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "port"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cmd"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sourcePort"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sendType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/boJUF/mB/mB/pO/tP/ac;->LA:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/boJUF/mB/mB/pO/tP/ac;->LA(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic LA(Lcom/boJUF/mB/mB/VD/vG;Ljava/lang/Object;)V
    .locals 3

    invoke-static {p1}, Lcom/boJUF/mB/mB/mB/uI;->LA(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/boJUF/mB/mB/VD/vG;->cp(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/boJUF/mB/mB/mB/uI;->LA(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/boJUF/mB/mB/VD/tQ;->LA()Lcom/boJUF/mB/mB/VD/XQ;

    move-result-object v0

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/vG;->LA:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/boJUF/mB/mB/VD/XQ;->LA(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u83b7\u53d6\u7684\u5fc3\u8df3\u53c2\u6570\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/boJUF/mB/mB/VD/vG;->LA(Ljava/util/HashMap;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic LA(Lcom/boJUF/mB/mB/VD/vG;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/boJUF/mB/mB/VD/vG;->LA(Ljava/lang/String;)V

    return-void
.end method

.method private static LA(Ljava/lang/Exception;Landroid/content/Context;)V
    .locals 3

    const-string v0, ""

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "exception"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x517

    invoke-static {v0, v1, p1}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z

    return-void
.end method

.method private LA(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/vG;->IL:Landroid/os/Handler;

    new-instance v1, Lcom/boJUF/mB/mB/VD/bT;

    invoke-direct {v1, p0, p1}, Lcom/boJUF/mB/mB/VD/bT;-><init>(Lcom/boJUF/mB/mB/VD/vG;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private On()Z
    .locals 3

    const/4 v2, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/vG;->oC:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/vG;->IL:Landroid/os/Handler;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/vG;->oC:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/vG;->na:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/boJUF/mB/mB/VD/vG;->oC:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/vG;->oC:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :cond_2
    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/vG;->IL:Landroid/os/Handler;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/vG;->oC:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/vG;->oC:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/boJUF/mB/mB/VD/vG;->IL:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static cp(Ljava/util/HashMap;)Lcom/boJUF/mB/mB/mB/ac;
    .locals 8

    new-instance v0, Lcom/boJUF/mB/mB/mB/ac;

    invoke-direct {v0}, Lcom/boJUF/mB/mB/mB/ac;-><init>()V

    invoke-static {p0}, Lcom/boJUF/mB/mB/mB/uI;->LA(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "name"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sign"

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "yfSign"

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "yjSign"

    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "zzSign"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "price"

    invoke-virtual {p0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "desc"

    invoke-virtual {p0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v2}, Lcom/boJUF/mB/mB/mB/ac;->LA(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/boJUF/mB/mB/mB/ac;->cp(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/boJUF/mB/mB/mB/ac;->On(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/boJUF/mB/mB/mB/ac;->TP(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/boJUF/mB/mB/mB/ac;->na(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/boJUF/mB/mB/mB/ac;->LA(I)V

    invoke-virtual {v0, v7}, Lcom/boJUF/mB/mB/mB/ac;->oC(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic cp(Lcom/boJUF/mB/mB/VD/vG;)Ljava/util/HashMap;
    .locals 21

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    const-string v14, ""

    const-string v13, ""

    const-string v12, ""

    const-string v11, ""

    const-string v10, ""

    const-string v9, ""

    const-string v8, ""

    const-string v7, ""

    const-string v6, ""

    const-string v5, ""

    const-string v4, ""

    const-string v3, ""

    const-string v2, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boJUF/mB/mB/VD/vG;->LA:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/boJUF/mB/mB/VD/mB/ac;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/mB/tQ;

    move-result-object v16

    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Lcom/boJUF/mB/mB/mB/tQ;->TP()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v16 .. v16}, Lcom/boJUF/mB/mB/mB/tQ;->na()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v16 .. v16}, Lcom/boJUF/mB/mB/mB/tQ;->On()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v16 .. v16}, Lcom/boJUF/mB/mB/mB/tQ;->cp()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Lcom/boJUF/mB/mB/mB/tQ;->LA()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Lcom/boJUF/mB/mB/mB/tQ;->oC()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Lcom/boJUF/mB/mB/mB/tQ;->VY()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Lcom/boJUF/mB/mB/mB/tQ;->sj()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/boJUF/mB/mB/mB/tQ;->Lx()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/boJUF/mB/mB/mB/tQ;->IL()Ljava/lang/String;

    move-result-object v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boJUF/mB/mB/VD/vG;->LA:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/boJUF/mB/mB/VD/mB/oC;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/mB/XQ;

    move-result-object v16

    if-eqz v16, :cond_1

    invoke-virtual/range {v16 .. v16}, Lcom/boJUF/mB/mB/mB/XQ;->LA()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {v16 .. v16}, Lcom/boJUF/mB/mB/mB/XQ;->On()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v16 .. v16}, Lcom/boJUF/mB/mB/mB/XQ;->cp()Ljava/lang/String;

    move-result-object v12

    :cond_1
    const-string v16, "4136"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    div-long v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boJUF/mB/mB/VD/vG;->On:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boJUF/mB/mB/VD/vG;->TP:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Lcom/boJUF/mB/mB/tP/mB/uI;->LA()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/boJUF/mB/mB/pO/tP/XQ;->LA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    const/16 v20, 0x2

    invoke-static/range {v19 .. v20}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/String;-><init>([B)V

    const-string v19, "msa"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boJUF/mB/mB/VD/vG;->On:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v19, "cha"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boJUF/mB/mB/VD/vG;->TP:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v19, "ver"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v16, "tp"

    invoke-virtual/range {v15 .. v17}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v16, "sign"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v16, "imsi"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "imei"

    invoke-virtual {v15, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "model"

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v15, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "manufacturer"

    sget-object v11, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v15, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "screenWidth"

    invoke-virtual {v15, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "screenHeight"

    invoke-virtual {v15, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "operatorSystem"

    invoke-virtual {v15, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "packageName"

    invoke-virtual {v15, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "versionCode"

    invoke-virtual {v15, v7, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "versionName"

    invoke-virtual {v15, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "iccid"

    invoke-virtual {v15, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "isRoaming"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/boJUF/mB/mB/VD/vG;->LA:Landroid/content/Context;

    invoke-static {v7}, Lcom/boJUF/mB/mB/VD/mB/ac;->On(Landroid/content/Context;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "networkType"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/boJUF/mB/mB/VD/vG;->LA:Landroid/content/Context;

    invoke-static {v7}, Lcom/boJUF/mB/mB/mB/uI;->cp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "CMCC"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/boJUF/mB/mB/VD/vG;->LA:Landroid/content/Context;

    invoke-static {v7}, Lcom/boJUF/mB/mB/VD/mB/ac;->cp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "MCC"

    invoke-virtual {v15, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "MNC"

    invoke-virtual {v15, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "LAC"

    invoke-virtual {v15, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "CID"

    invoke-virtual {v15, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "plugins"

    const-string v3, ""

    invoke-virtual {v15, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "MAC"

    invoke-static {}, Lcom/boJUF/mB/mB/mB/uI;->cp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v15
.end method

.method private cp(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 9

    const-wide/16 v4, 0x1

    const/4 v7, 0x1

    sget-object v0, Lcom/boJUF/mB/mB/tP/uI;->na:Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-static {p1}, Lcom/boJUF/mB/mB/mB/uI;->LA(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-static {p1}, Lcom/boJUF/mB/mB/mB/uI;->cp(Ljava/lang/String;)Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :try_start_1
    invoke-static {v1}, Lcom/boJUF/mB/mB/mB/uI;->LA(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/boJUF/mB/mB/VD/vG;->LA(Ljava/util/HashMap;)Lcom/boJUF/mB/mB/mB/Ut;

    move-result-object v6

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/vG;->LA:Landroid/content/Context;

    const-string v2, "payment_interval"

    invoke-virtual {v6}, Lcom/boJUF/mB/mB/mB/Ut;->cp()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/boJUF/mB/mB/VD/mB/Ke;->LA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/vG;->LA:Landroid/content/Context;

    const-string v2, "vc_timeout"

    invoke-virtual {v6}, Lcom/boJUF/mB/mB/mB/Ut;->LA()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/boJUF/mB/mB/VD/mB/Ke;->LA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/vG;->LA:Landroid/content/Context;

    invoke-static {v0}, Lcom/boJUF/mB/mB/Xd/oC;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/Xd/uI;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/boJUF/mB/mB/Xd/uI;->cp(Lcom/boJUF/mB/mB/mB/Ut;)I

    move-result v2

    if-gtz v2, :cond_4

    invoke-virtual {v0, v6}, Lcom/boJUF/mB/mB/Xd/uI;->LA(Lcom/boJUF/mB/mB/mB/Ut;)J

    move-result-wide v2

    :goto_1
    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/vG;->LA:Landroid/content/Context;

    const-string v2, "lastHBTime"

    invoke-static {}, Lcom/boJUF/mB/mB/VD/mB/ac;->LA()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/boJUF/mB/mB/VD/mB/Ke;->LA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/vG;->LA:Landroid/content/Context;

    const-string v2, "lastHBImsi"

    iget-object v3, p0, Lcom/boJUF/mB/mB/VD/vG;->LA:Landroid/content/Context;

    invoke-static {v3}, Lcom/boJUF/mB/mB/mB/uI;->oC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/boJUF/mB/mB/VD/mB/Ke;->LA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/vG;->LA:Landroid/content/Context;

    const-string v2, "upm"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/boJUF/mB/mB/VD/mB/Ke;->cp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v6}, Lcom/boJUF/mB/mB/mB/Ut;->On()I

    move-result v2

    if-ne v2, v7, :cond_3

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/boJUF/mB/mB/JO/XQ;->LA()Lcom/boJUF/mB/mB/JO/XQ;

    const/16 v0, 0x8

    iget-object v2, p0, Lcom/boJUF/mB/mB/VD/vG;->LA:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/boJUF/mB/mB/JO/XQ;->LA(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/boJUF/mB/mB/VD/vG;->Lx:Landroid/os/Handler;

    const/16 v3, 0xf

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    move-object v0, v1

    :goto_2
    move-object v1, v0

    goto/16 :goto_0

    :cond_4
    move-wide v2, v4

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    :goto_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_3
.end method


# virtual methods
.method public final LA()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/vG;->LA:Landroid/content/Context;

    invoke-static {v0}, Lcom/boJUF/mB/mB/mB/uI;->cp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/vG;->LA:Landroid/content/Context;

    invoke-static {}, Lcom/boJUF/mB/mB/VD/mB/ac;->On()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/vG;->LA:Landroid/content/Context;

    sget-object v2, Lcom/boJUF/mB/mB/tP/ac;->LA:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/boJUF/mB/mB/VD/mB/Ke;->LA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/boJUF/mB/mB/VD/vG;->LA(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-gt v2, v3, :cond_2

    invoke-direct {p0, v1}, Lcom/boJUF/mB/mB/VD/vG;->LA(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-le v0, v3, :cond_0

    invoke-direct {p0}, Lcom/boJUF/mB/mB/VD/vG;->On()Z

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/vG;->IL:Landroid/os/Handler;

    new-instance v1, Lcom/boJUF/mB/mB/VD/ak;

    invoke-direct {v1, p0}, Lcom/boJUF/mB/mB/VD/ak;-><init>(Lcom/boJUF/mB/mB/VD/vG;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final LA(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 5

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/boJUF/mB/mB/VD/vG;->On:Ljava/lang/String;

    iput-object p2, p0, Lcom/boJUF/mB/mB/VD/vG;->TP:Ljava/lang/String;

    invoke-static {}, Lcom/boJUF/mB/mB/pO/tP/uI;->LA()Lcom/boJUF/mB/mB/pO/tP/uI;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/boJUF/mB/mB/pO/tP/uI;->LA(I)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/vG;->LA:Landroid/content/Context;

    sget-object v1, Lcom/boJUF/mB/mB/tP/ac;->LA:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/boJUF/mB/mB/VD/mB/Ke;->LA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/vG;->LA:Landroid/content/Context;

    const-string v1, "mmsa"

    iget-object v2, p0, Lcom/boJUF/mB/mB/VD/vG;->On:Ljava/lang/String;

    const-string v3, "sharedPreference"

    invoke-static {v2, v3}, Lcom/boJUF/mB/mB/mB/uI;->On(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/boJUF/mB/mB/VD/mB/Ke;->LA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/vG;->LA:Landroid/content/Context;

    const-string v1, "chSign"

    iget-object v2, p0, Lcom/boJUF/mB/mB/VD/vG;->TP:Ljava/lang/String;

    const-string v3, "sharedPreference"

    invoke-static {v2, v3}, Lcom/boJUF/mB/mB/mB/uI;->On(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/boJUF/mB/mB/VD/mB/Ke;->LA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/vG;->LA:Landroid/content/Context;

    const-string v1, "isForceOpenedData"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/boJUF/mB/mB/VD/mB/Ke;->LA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/vG;->LA:Landroid/content/Context;

    const-string v1, "isForceOpenedWifi"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/boJUF/mB/mB/VD/mB/Ke;->LA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/vG;->LA:Landroid/content/Context;

    invoke-static {v0}, Lcom/boJUF/mB/mB/Xd/oC;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/Xd/uI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boJUF/mB/mB/Xd/uI;->LA()Lcom/boJUF/mB/mB/mB/Ut;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/boJUF/mB/mB/mB/Ut;->sj()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/boJUF/mB/mB/VD/tQ;->LA()Lcom/boJUF/mB/mB/VD/XQ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/boJUF/mB/mB/VD/XQ;->LA()Lcom/boJUF/mB/mB/mB/Ut;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/boJUF/mB/mB/Xd/uI;->LA(Lcom/boJUF/mB/mB/mB/Ut;)J

    :cond_1
    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/vG;->LA:Landroid/content/Context;

    invoke-static {v0}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/vG;->LA:Landroid/content/Context;

    invoke-static {v0}, Lcom/boJUF/mB/mB/Xd/oC;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/Xd/uI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boJUF/mB/mB/Xd/uI;->cp()I

    invoke-virtual {v0}, Lcom/boJUF/mB/mB/Xd/uI;->na()V

    invoke-virtual {v0}, Lcom/boJUF/mB/mB/Xd/uI;->oC()V

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/vG;->LA:Landroid/content/Context;

    invoke-static {v0}, Lcom/boJUF/mB/mB/mB/uI;->IL(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/vG;->Lx:Landroid/os/Handler;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/vG;->LA:Landroid/content/Context;

    new-instance v2, Lcom/boJUF/mB/mB/VD/Wh;

    invoke-direct {v2, p0}, Lcom/boJUF/mB/mB/VD/Wh;-><init>(Lcom/boJUF/mB/mB/VD/vG;)V

    invoke-static {v0, v1, v2}, Lcom/boJUF/mB/mB/mB/uI;->LA(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/boJUF/mB/mB/VD/vG;->LA()V

    goto :goto_0
.end method

.method public final LA(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/boJUF/mB/mB/mB/uI;->LA(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/vG;->LA:Landroid/content/Context;

    sget-object v1, Lcom/boJUF/mB/mB/tP/ac;->LA:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/boJUF/mB/mB/VD/mB/Ke;->cp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "needMobile"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "preMobile"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "locate"

    const-string v2, "preMobile"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4b2

    iget-object v2, p0, Lcom/boJUF/mB/mB/VD/vG;->LA:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z

    const-string v0, ""

    const-string v1, ""

    if-eqz p1, :cond_0

    const-string v2, "smsCat"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "catCmd"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2}, Lcom/boJUF/mB/mB/mB/uI;->cp(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {v3}, Lcom/boJUF/mB/mB/mB/uI;->cp(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-static {v0}, Lcom/boJUF/mB/mB/mB/uI;->LA(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/boJUF/mB/mB/mB/uI;->LA(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/boJUF/mB/mB/pO/mB/jj;

    invoke-direct {v2}, Lcom/boJUF/mB/mB/pO/mB/jj;-><init>()V

    invoke-static {v0, v1}, Lcom/boJUF/mB/mB/VD/vG;->LA(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/boJUF/mB/mB/pO/mB/jj;->oC(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/boJUF/mB/mB/pO/mB/jj;->On(I)V

    const/4 v0, -0x1

    invoke-virtual {v2, v0}, Lcom/boJUF/mB/mB/pO/mB/jj;->TP(I)V

    const-string v0, "0"

    invoke-virtual {v2, v0}, Lcom/boJUF/mB/mB/pO/mB/jj;->na(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/boJUF/mB/mB/pO/mB/jj;->cp(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Lcom/boJUF/mB/mB/pO/mB/jj;->LA(J)V

    invoke-virtual {v2, v5}, Lcom/boJUF/mB/mB/pO/mB/jj;->na(I)V

    invoke-virtual {v2, v0, v1}, Lcom/boJUF/mB/mB/pO/mB/jj;->cp(J)V

    const-wide/16 v3, 0xa

    add-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Lcom/boJUF/mB/mB/pO/mB/jj;->On(J)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/vG;->LA:Landroid/content/Context;

    invoke-static {v0}, Lcom/boJUF/mB/mB/Xd/oC;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/Xd/uI;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/boJUF/mB/mB/Xd/uI;->LA(Lcom/boJUF/mB/mB/pO/mB/jj;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/vG;->LA:Landroid/content/Context;

    invoke-static {v0}, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/pO/Iy/tP/uI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->TP()V

    goto/16 :goto_0
.end method

.method public final LA(Z)V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/boJUF/mB/mB/VD/vG;->On()Z

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/vG;->IL:Landroid/os/Handler;

    new-instance v1, Lcom/boJUF/mB/mB/VD/Iz;

    invoke-direct {v1, p0, p1}, Lcom/boJUF/mB/mB/VD/Iz;-><init>(Lcom/boJUF/mB/mB/VD/vG;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final cp()V
    .locals 5

    const/16 v4, 0xe

    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "MjdERENFNjhGQTkyQjE1QkY3QUNBRjYxNzlDQURFNzc4MDZEMzVFREE1NDgzRTczNDZBRUI5QUI2NkU5MzZCOEI3NDUzNjUyRTk0MTg4QzM1NTFBNzEzQjdBMTkxNTk2"

    const-string v2, "wap&ifs"

    invoke-static {v1, v2}, Lcom/boJUF/mB/mB/mB/uI;->TP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const v1, 0xc350

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const-string v1, "Authorization"

    const-string v2, "QjI5NDcyNUMxRDFDOUJCRDgyM0I2MjkyN0IwRUM3NTVCOEY5NTJDOTRBNzIzRDIxM0MxMENGRTU0RDY4RjlDMzM5MzQ3RkRDMjNFM0E5NjM4NkMzRTZDNUE0RENBRDAwQThFMkFGN0Y1NzlGMzRCMDhENzc5MTU5MkZDMjk0ODk0RTFEQzQ0RjgxQjEwQkYzOTdCQ0QzNzBEOTVBNTAwQTU5QUExODlGQjMyMDVGREZFQzM4NDREODZDN0U4QjUyQTYwNzBDNzNENkQ5MzFGODBDQkFGODM0MUE5QTUxOTA0ODZGNDMwQTZFQjFGOTcxQzBCNTFBNzkyQTk2OUM3NUZDMDFCMzU5QjRBQjU1MDcxRkIwOEU3NEUxMjA5QjJEN0QzMkExMDVCNzk3NDlFM0VERDRCN0JDQUEzMjNGMzYzRDNFREVDRTJFNTY0RTBFNzg5QTRBREYxQjU5RjM5QUU3QUQ0NzA3Njc5NzRERDM0NTEzREE1MEFFREU1RTQwNjMyMkRDNjJCNUI4QjREODgwQjg1QUU2QkI1QTMwMUI2MjUwNzRCOTlFRjhDODkyMTVFOUE2MjE3QzdCNTREOEY5MzZFQTM2MTRBNjZFRkY3RUJDQjFDMUMxM0U3QzU0MzFCOUI3NTY5RkFCRjc1NTM3ODQzMjJCRkFBNDIwNjkyOUE2Qzk3N0E0RDMyOUFDNTZFRDgyMjM3NkY5RkU1OUU0QUU5RkYwREJFQkZCRjE5M0JEMDI4M0VFNTI4Mzc3NjQzQTEzMDYzNjE2QTE4MUFGQkE5Q0NGREYzQzI4MDI2QjJGMzMzNDY2MTZDMDJEOTA4MUY0MTlFNDRFNzY5QTczRTM5QTJFOTc2M0UyNzc5RjZFREI3MkYxRkU3RUVFMzM0RkNBQzU0MkQ5OTU2NjBCMTBFQzA0RUM2NTc5NjMzQzE3N0MwMTg2RTg3NjNFMDQwQjM4M0MzODBGRDg3Q0Q0QjBBMkE1NDI0ODNEM0IwMTUzOTcxRUQ1RTNGMEZCRTE1MkYwMTRFRkMyRTYxNzkyMDMzNjE4Q0YwMjUyNkQ="

    const-string v3, "wap&ifs"

    invoke-static {v2, v3}, Lcom/boJUF/mB/mB/mB/uI;->TP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "signature"

    const-string v2, "QkJBRUM5MDE2OEIzOERDQTZGMUI5MjhDOTQ3RTdFMzFGMjQyREUzQjA5MzcwQjE1NkQyNjRCQzRFQkE1NDYyRjk4RTUwQURBNzQyNTQ5RkM5QkU5QUU5Q0FFOTQyNjU2ODI2NDc3OEZGQzYyOTQzN0FCN0E0QUMzQjc0NzE0NTdGMTM5OTVEQzExMTgyRTg1QkQ0NjA1NTAwODNDNTY3RDg1Njc2RTZBNzlEMUJCNTEyMkFBNTgzRjY2MUQzQTVENUM5M0Q1MzhFMzY5RkJDNDRERTM1MUJDRkM2Q0E0MTRFNkYyQTQ5OThEMDQzOUE0MzJGQkQ0MDE1MTgxQTNDNUM0NDdDMzRGMjRCNUVGNkI3Q0YwNTYwNzFDOUM2RjM4NThBOUM0NjQzMjMwMzJCQ0NFQURERkYwN0VCODI5MTc1Njg3NDlCNTRCNEZEOTU5Q0I3NzBDRDU4MDk0OTQ1MDE5NzVENTkwNDQ4RkI2MkVEMDk2QTI4NUM3QkQyQTg5M0I0QTQ2ODExREY2QTE4RDcwNDUwNUIzREIyQjMxRjIwRDMyRjNDODYxREVDQjVEOUIwMTk1ODRFQzY1MkExQUZERUExREU4NzQ5ODg5NzQwMkVBRTNDQ0JDNUM4MDg3Qjc0RTIwOEEyQ0NCNjNFQTcxNkFGRTA2QThGN0Y5QTZBMTI0RjdCMTcyNDUxRjlDRTFCRDc5MjRFRDY3MjQ4RQ=="

    const-string v3, "wap&ifs"

    invoke-static {v2, v3}, Lcom/boJUF/mB/mB/mB/uI;->TP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    const-string v1, "WWW-Authenticate"

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "wap ip error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "username=\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/vG;->Lx:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/vG;->Lx:Landroid/os/Handler;

    const/16 v1, 0xe

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/vG;->Lx:Landroid/os/Handler;

    const-string v1, ""

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
