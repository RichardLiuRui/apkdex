.class public final Lcom/boJUF/mB/mB/VD/Ke;
.super Ljava/lang/Object;


# instance fields
.field private IL:Ljava/lang/String;

.field private LA:Landroid/app/Activity;

.field private On:Lcom/boJUF/vvPaListener;

.field private TP:Landroid/os/Handler;

.field private cp:Landroid/content/Context;

.field private na:Landroid/os/HandlerThread;

.field private oC:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->na:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->oC:Landroid/os/Handler;

    const-string v0, "miiTimeHt"

    iput-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->IL:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/boJUF/mB/mB/VD/Ke;-><init>()V

    return-void
.end method

.method private LA(I)I
    .locals 2

    const/16 v0, 0x7d1

    invoke-static {p1}, Lcom/boJUF/mB/mB/VD/Ke;->cp(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x3e9

    :cond_0
    return v0
.end method

.method private LA(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/boJUF/mB/mB/VD/mB/Ke;->cp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static synthetic LA(Lcom/boJUF/mB/mB/VD/Ke;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    return-object v0
.end method

.method public static LA()Lcom/boJUF/mB/mB/VD/Ke;
    .locals 1

    invoke-static {}, Lcom/boJUF/mB/mB/VD/qo;->LA()Lcom/boJUF/mB/mB/VD/Ke;

    move-result-object v0

    return-object v0
.end method

.method private LA(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "cpOid"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "payType"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Ke;->TP:Landroid/os/Handler;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3, v0}, Lcom/boJUF/mB/mB/mB/uI;->LA(Landroid/os/Handler;IIILjava/lang/Object;)V

    return-void
.end method

.method private LA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11

    invoke-static {p1}, Lcom/boJUF/mB/mB/mB/uI;->IL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p5}, Lcom/boJUF/mB/mB/VD/Ke;->cp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "3"

    invoke-virtual {p0, p4, v0}, Lcom/boJUF/mB/mB/VD/Ke;->LA(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/boJUF/mB/mB/aY/oC;

    invoke-direct {v7}, Lcom/boJUF/mB/mB/aY/oC;-><init>()V

    iget-object v8, p0, Lcom/boJUF/mB/mB/VD/Ke;->LA:Landroid/app/Activity;

    const-string v9, "\u5f53\u524d\u672a\u68c0\u6d4b\u5230\u7f51\u7edc\uff01"

    const/4 v10, 0x1

    new-instance v0, Lcom/boJUF/mB/mB/VD/ji;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/boJUF/mB/mB/VD/ji;-><init>(Lcom/boJUF/mB/mB/VD/Ke;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v8, v9, v10, v0}, Lcom/boJUF/mB/mB/aY/oC;->LA(Landroid/app/Activity;Ljava/lang/String;ILcom/boJUF/mB/mB/aY/jj;)V

    goto :goto_0
.end method

.method static synthetic LA(Lcom/boJUF/mB/mB/VD/Ke;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/boJUF/mB/mB/VD/Ke;->LA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic LA(Lcom/boJUF/mB/mB/VD/Ke;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    const-class v2, Lcom/boJUF/ac;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "startMPay"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "moid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method static synthetic LA(Lcom/boJUF/mB/mB/VD/Ke;Ljava/lang/String;IILjava/lang/String;)V
    .locals 10

    const/16 v0, 0x3e9

    if-ne p2, v0, :cond_0

    const-string v0, "RDRDMjczOUVBOENBNTVCMTZFOUFFMzUyRkZFNThFREM="

    const-string v1, "dialog"

    invoke-static {v0, v1}, Lcom/boJUF/mB/mB/mB/uI;->TP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :goto_0
    invoke-static {v6}, Lcom/boJUF/mB/mB/mB/uI;->LA(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/boJUF/mB/mB/VD/Ke;->LA(Ljava/lang/String;IILjava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    sparse-switch p3, :sswitch_data_0

    const-string v0, "NUQ0NDcxN0U1M0Y5NDEwOTIwODBCMEEyNjk5RTRDQUY="

    const-string v1, "dialog"

    invoke-static {v0, v1}, Lcom/boJUF/mB/mB/mB/uI;->TP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :sswitch_0
    const-string v0, "RDA5REE4MUNEMEVDNzk3NzA5RDVBMTQ2NDc4MkU5NTAxNjZCMDQ4OUE0NDFGQTVDQjdCMUEzMjkwNjFDRTk4OA=="

    const-string v1, "dialog"

    invoke-static {v0, v1}, Lcom/boJUF/mB/mB/mB/uI;->TP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :sswitch_1
    const-string v0, "QTRCNUE3QjEzRjk3MEEzRjFGOTI2REEzODQ2REUxRTU="

    const-string v1, "dialog"

    invoke-static {v0, v1}, Lcom/boJUF/mB/mB/mB/uI;->TP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :sswitch_2
    const-string v0, "QzkyOTFCRDMyRTkyNkU1RDVGRkU4NjFERDJGMkE3ODQ="

    const-string v1, "dialog"

    invoke-static {v0, v1}, Lcom/boJUF/mB/mB/mB/uI;->TP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :cond_1
    new-instance v7, Lcom/boJUF/mB/mB/aY/oC;

    invoke-direct {v7}, Lcom/boJUF/mB/mB/aY/oC;-><init>()V

    iget-object v8, p0, Lcom/boJUF/mB/mB/VD/Ke;->LA:Landroid/app/Activity;

    const/4 v9, 0x3

    new-instance v0, Lcom/boJUF/mB/mB/VD/Lr;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/boJUF/mB/mB/VD/Lr;-><init>(Lcom/boJUF/mB/mB/VD/Ke;Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v7, v8, v6, v9, v0}, Lcom/boJUF/mB/mB/aY/oC;->LA(Landroid/app/Activity;Ljava/lang/String;ILcom/boJUF/mB/mB/aY/jj;)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x7d7 -> :sswitch_0
        0x83b -> :sswitch_1
        0x844 -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic LA(Lcom/boJUF/mB/mB/VD/Ke;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    new-instance v6, Lcom/boJUF/mB/mB/aY/oC;

    invoke-direct {v6}, Lcom/boJUF/mB/mB/aY/oC;-><init>()V

    iget-object v7, p0, Lcom/boJUF/mB/mB/VD/Ke;->LA:Landroid/app/Activity;

    const/4 v8, 0x2

    new-instance v0, Lcom/boJUF/mB/mB/VD/Vr;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/boJUF/mB/mB/VD/Vr;-><init>(Lcom/boJUF/mB/mB/VD/Ke;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v7, p2, v8, v0}, Lcom/boJUF/mB/mB/aY/oC;->LA(Landroid/app/Activity;Ljava/lang/String;ILcom/boJUF/mB/mB/aY/jj;)V

    const/16 v0, 0x836

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z

    return-void
.end method

.method private LA(Ljava/lang/String;IILjava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->On:Lcom/boJUF/vvPaListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->On:Lcom/boJUF/vvPaListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/boJUF/vvPaListener;->callback(Ljava/lang/String;IILjava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "MOID"

    iget-object v2, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-static {v2}, Lcom/boJUF/mB/mB/Xd/oC;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/Xd/uI;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/boJUF/mB/mB/Xd/uI;->VY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "detailCode"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8fd

    iget-object v2, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-static {v0}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    const-string v1, "isForceOpenedData"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/boJUF/mB/mB/VD/mB/Ke;->cp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/boJUF/mB/mB/tP/uI;->sj:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/boJUF/mB/mB/mB/uI;->LA(ZLandroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    const-string v1, "isForceOpenedWifi"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/boJUF/mB/mB/VD/mB/Ke;->cp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/boJUF/mB/mB/tP/uI;->VY:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/boJUF/mB/mB/mB/uI;->cp(ZLandroid/content/Context;)V

    :cond_2
    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->TP:Landroid/os/Handler;

    new-instance v1, Lcom/boJUF/mB/mB/VD/Ec;

    invoke-direct {v1, p0}, Lcom/boJUF/mB/mB/VD/Ec;-><init>(Lcom/boJUF/mB/mB/VD/Ke;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private On(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-static {v0}, Lcom/boJUF/mB/mB/pO/tP/ac;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/pO/mB/uI;

    move-result-object v7

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v6, ""

    const-string v5, ""

    const-string v4, ""

    const-string v3, ""

    const-string v2, ""

    const-string v1, ""

    const-string v0, ""

    invoke-static {p1}, Lcom/boJUF/mB/mB/VD/mB/ac;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/mB/tQ;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/boJUF/mB/mB/mB/tQ;->TP()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9}, Lcom/boJUF/mB/mB/mB/tQ;->na()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Lcom/boJUF/mB/mB/mB/tQ;->oC()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Lcom/boJUF/mB/mB/mB/tQ;->IL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/boJUF/mB/mB/mB/tQ;->Lx()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lcom/boJUF/mB/mB/mB/tQ;->VY()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lcom/boJUF/mB/mB/mB/tQ;->sj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v9, "imsi"

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "imei"

    invoke-virtual {v8, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "iccid"

    invoke-virtual {v8, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "gid"

    invoke-virtual {v8, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "pt"

    const-string v5, "1"

    invoke-virtual {v8, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "ext"

    invoke-virtual {v8, v4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "cpOid"

    invoke-virtual {v8, v4, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "CMCC"

    invoke-static {p1}, Lcom/boJUF/mB/mB/VD/mB/ac;->cp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "MCC"

    invoke-virtual {v8, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "MNC"

    invoke-virtual {v8, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "LAC"

    invoke-virtual {v8, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CID"

    invoke-virtual {v8, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "networkType"

    invoke-static {p1}, Lcom/boJUF/mB/mB/mB/uI;->cp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "payRetry"

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/boJUF/mB/mB/VD/cf;

    invoke-direct {v1, p0, v8, v7, p4}, Lcom/boJUF/mB/mB/VD/cf;-><init>(Lcom/boJUF/mB/mB/VD/Ke;Ljava/util/HashMap;Lcom/boJUF/mB/mB/pO/mB/uI;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "5"

    invoke-virtual {p0, p4, v0}, Lcom/boJUF/mB/mB/VD/Ke;->LA(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic On(Lcom/boJUF/mB/mB/VD/Ke;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/boJUF/mB/mB/VD/Ke;->On(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private On(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    invoke-direct {p0, p2}, Lcom/boJUF/mB/mB/VD/Ke;->LA(I)I

    move-result v0

    invoke-static {}, Lcom/boJUF/mB/mB/VD/tQ;->LA()Lcom/boJUF/mB/mB/VD/XQ;

    move-result-object v1

    iget-object v2, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/boJUF/mB/mB/VD/XQ;->LA(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "showResultUI"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "cpOid"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ext"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/boJUF/mB/mB/VD/Ke;->TP:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-static {v2, v3, v0, p2, v1}, Lcom/boJUF/mB/mB/mB/uI;->LA(Landroid/os/Handler;IIILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/boJUF/mB/mB/VD/Ke;->LA(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method

.method private On()Z
    .locals 3

    const/4 v2, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->na:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->oC:Landroid/os/Handler;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->na:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Ke;->IL:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->na:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->na:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :cond_2
    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->oC:Landroid/os/Handler;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->na:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Ke;->na:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->oC:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic cp(Lcom/boJUF/mB/mB/VD/Ke;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/boJUF/mB/mB/VD/Ke;->LA(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic cp(Lcom/boJUF/mB/mB/VD/Ke;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->TP:Landroid/os/Handler;

    return-object v0
.end method

.method private cp(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x0

    const/16 v8, 0x83e

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-static {v0}, Lcom/boJUF/mB/mB/Xd/oC;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/Xd/uI;

    move-result-object v1

    invoke-static {}, Lcom/boJUF/mB/mB/VD/mB/ac;->LA()J

    move-result-wide v2

    :try_start_0
    invoke-static {p1}, Lcom/boJUF/mB/mB/mB/uI;->cp(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 v0, 0x83e

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/boJUF/mB/mB/VD/Ke;->LA(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v4, "msoid"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "tks"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4}, Lcom/boJUF/mB/mB/mB/uI;->LA(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v5}, Lcom/boJUF/mB/mB/mB/uI;->LA(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x83e

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/boJUF/mB/mB/VD/Ke;->LA(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/boJUF/mB/mB/pO/mB/Ut;

    invoke-direct {v5}, Lcom/boJUF/mB/mB/pO/mB/Ut;-><init>()V

    invoke-virtual {v5, v0}, Lcom/boJUF/mB/mB/pO/mB/Ut;->LA(Ljava/lang/String;)V

    const-string v6, "abcsd"

    invoke-virtual {v5, v6}, Lcom/boJUF/mB/mB/pO/mB/Ut;->cp(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/boJUF/mB/mB/pO/mB/Ut;->LA(I)V

    const/4 v6, 0x3

    invoke-static {v4, v6}, Lcom/boJUF/mB/mB/pO/tP/oC;->LA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/boJUF/mB/mB/pO/mB/Ut;->On(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Lcom/boJUF/mB/mB/pO/mB/Ut;->TP(I)V

    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Lcom/boJUF/mB/mB/pO/mB/Ut;->On(I)V

    invoke-virtual {v5, v2, v3}, Lcom/boJUF/mB/mB/pO/mB/Ut;->LA(J)V

    const-wide/16 v6, 0x3c

    add-long/2addr v2, v6

    invoke-virtual {v5, v2, v3}, Lcom/boJUF/mB/mB/pO/mB/Ut;->cp(J)V

    invoke-virtual {v1, v5}, Lcom/boJUF/mB/mB/Xd/uI;->LA(Lcom/boJUF/mB/mB/pO/mB/Ut;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0, v8, p2, v9}, Lcom/boJUF/mB/mB/VD/Ke;->LA(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_0
.end method

.method private cp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    :try_start_0
    invoke-static {}, Lcom/boJUF/mB/mB/VD/tQ;->LA()Lcom/boJUF/mB/mB/VD/XQ;

    move-result-object v0

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/boJUF/mB/mB/VD/XQ;->LA(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "needConfirm"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v0, ""

    iget-object v2, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-static {v2}, Lcom/boJUF/mB/mB/Xd/oC;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/Xd/uI;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/boJUF/mB/mB/Xd/uI;->IL(Ljava/lang/String;)Lcom/boJUF/mB/mB/pO/mB/tQ;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/boJUF/mB/mB/pO/mB/tQ;->On()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-static {v3}, Lcom/boJUF/mB/mB/Xd/oC;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/Xd/uI;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/boJUF/mB/mB/Xd/uI;->LA(Ljava/lang/String;)Lcom/boJUF/mB/mB/mB/ac;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/boJUF/mB/mB/mB/ac;->cp()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/boJUF/mB/mB/mB/uI;->cp(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/boJUF/mB/mB/mB/ac;->cp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/boJUF/mB/mB/mB/ac;->IL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/boJUF/mB/mB/mB/ac;->oC()I

    move-result v2

    invoke-static {v0}, Lcom/boJUF/mB/mB/mB/uI;->cp(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "0"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-static {v0}, Lcom/boJUF/mB/mB/mB/uI;->cp(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "cpOid"

    invoke-virtual {v1, v2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "text"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "gid"

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ext"

    invoke-virtual {v1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->TP:Landroid/os/Handler;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-static {v0, v2, p5, v3, v1}, Lcom/boJUF/mB/mB/mB/uI;->LA(Landroid/os/Handler;IIILjava/lang/Object;)V

    :goto_1
    return-void

    :cond_1
    const-string v0, "QjA4NjlBM0E4NjAwQTZDMkE2OTA1NDJFRjAxQUFDMUVDOTYxQTQxRTRCNzE2RTkxRDVEMTFBM0Q3QzZERTMyOQ=="

    const-string v4, "dialog"

    invoke-static {v0, v4}, Lcom/boJUF/mB/mB/mB/uI;->TP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "MjFDNDFFNjlDNzkyMjE4OEE1NUNEODE4MkNBMjBDQzk1MURCMEJGOTFCRjgxRjIyMDJEMTM0NDRFMEUyRTBGQw=="

    const-string v5, "dialog"

    invoke-static {v4, v5}, Lcom/boJUF/mB/mB/mB/uI;->TP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "MjM5RDEyNENFQ0M1MjQxMUYxQTIyNTk3ODRCRkFDRUU5NUMzRDBEMUQ3QzBDNDU5MjUwMkI1M0FCODJGMkEzQw=="

    const-string v6, "dialog"

    invoke-static {v5, v6}, Lcom/boJUF/mB/mB/mB/uI;->TP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-int/lit8 v2, v2, 0x64

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct/range {p0 .. p5}, Lcom/boJUF/mB/mB/VD/Ke;->On(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v0, 0x83d

    const/4 v1, 0x0

    invoke-virtual {p0, p4, v0, v1}, Lcom/boJUF/mB/mB/VD/Ke;->cp(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic cp(Lcom/boJUF/mB/mB/VD/Ke;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/boJUF/mB/mB/VD/Ke;->cp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic cp(Lcom/boJUF/mB/mB/VD/Ke;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/boJUF/mB/mB/VD/Ke;->LA(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method private static cp(I)Z
    .locals 5

    const/4 v0, 0x0

    sget-object v2, Lcom/boJUF/mB/mB/tP/oC;->LA:[Ljava/lang/Integer;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne p0, v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final LA(Landroid/app/Activity;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->TP:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->TP:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->TP:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->LA:Landroid/app/Activity;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->LA:Landroid/app/Activity;

    :cond_1
    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    :cond_2
    iput-object p1, p0, Lcom/boJUF/mB/mB/VD/Ke;->LA:Landroid/app/Activity;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->LA:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    new-instance v0, Lcom/boJUF/mB/mB/VD/Ut;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/boJUF/mB/mB/VD/Ut;-><init>(Lcom/boJUF/mB/mB/VD/Ke;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->TP:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final LA(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/boJUF/vvPaListener;)V
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v0, "1"

    invoke-virtual {p0, p3, v0}, Lcom/boJUF/mB/mB/VD/Ke;->LA(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/boJUF/mB/mB/pO/tP/uI;->LA()Lcom/boJUF/mB/mB/pO/tP/uI;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/boJUF/mB/mB/pO/tP/uI;->LA(I)V

    iput-object p5, p0, Lcom/boJUF/mB/mB/VD/Ke;->On:Lcom/boJUF/vvPaListener;

    if-eqz p1, :cond_0

    if-nez p5, :cond_1

    :cond_0
    sget-object v0, Lcom/boJUF/mB/mB/tP/uI;->rC:Ljava/lang/String;

    move v0, v2

    :goto_0
    if-nez v0, :cond_8

    sget-object v0, Lcom/boJUF/mB/mB/tP/uI;->bh:Ljava/lang/String;

    const/16 v0, 0x7d6

    invoke-direct {p0, p3, v0, p4}, Lcom/boJUF/mB/mB/VD/Ke;->On(Ljava/lang/String;ILjava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    invoke-static {p2}, Lcom/boJUF/mB/mB/mB/uI;->LA(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Lcom/boJUF/mB/mB/mB/uI;->LA(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lcom/boJUF/mB/mB/tP/uI;->gj:Ljava/lang/String;

    move v0, v2

    goto :goto_0

    :cond_3
    const-string v0, "[a-zA-Z0-9]+"

    invoke-static {v0, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/boJUF/mB/mB/tP/uI;->uv:Ljava/lang/String;

    move v0, v2

    goto :goto_0

    :cond_4
    const-string v0, "[a-zA-Z0-9_]+"

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x40

    if-gt v3, v4, :cond_5

    invoke-static {v0, p3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    sget-object v0, Lcom/boJUF/mB/mB/tP/uI;->Ab:Ljava/lang/String;

    move v0, v2

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-static {v0}, Lcom/boJUF/mB/mB/Xd/oC;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/Xd/uI;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/boJUF/mB/mB/Xd/uI;->Lx(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/boJUF/mB/mB/tP/uI;->Hm:Ljava/lang/String;

    move v0, v2

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, p3, v3}, Lcom/boJUF/mB/mB/VD/mB/Ke;->LA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    const-string v3, "lastPTime"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/boJUF/mB/mB/VD/mB/Ke;->cp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {}, Lcom/boJUF/mB/mB/VD/mB/ac;->cp()J

    move-result-wide v5

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    const-string v7, "payment_interval"

    const/16 v8, 0x2710

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0, v7, v8}, Lcom/boJUF/mB/mB/VD/mB/Ke;->cp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-long v3, v5, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-gez v0, :cond_9

    move v0, v1

    :goto_2
    if-eqz v0, :cond_a

    const/16 v0, 0x7d4

    invoke-direct {p0, p3, v0, p4}, Lcom/boJUF/mB/mB/VD/Ke;->On(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_9
    move v0, v2

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    const-string v1, "lastPTime"

    invoke-static {}, Lcom/boJUF/mB/mB/VD/mB/ac;->cp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/boJUF/mB/mB/VD/mB/Ke;->LA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    new-instance v0, Lcom/boJUF/mB/mB/pO/mB/tQ;

    invoke-direct {v0}, Lcom/boJUF/mB/mB/pO/mB/tQ;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/boJUF/mB/mB/pO/mB/tQ;->LA(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/boJUF/mB/mB/pO/mB/tQ;->cp(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/boJUF/mB/mB/pO/mB/tQ;->On(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/boJUF/mB/mB/pO/mB/tQ;->TP(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/boJUF/mB/mB/pO/mB/tQ;->LA(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/boJUF/mB/mB/pO/mB/tQ;->cp(I)V

    invoke-static {}, Lcom/boJUF/mB/mB/VD/mB/ac;->cp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/boJUF/mB/mB/pO/mB/tQ;->LA(J)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/boJUF/mB/mB/pO/mB/tQ;->cp(J)V

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-static {v1}, Lcom/boJUF/mB/mB/Xd/oC;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/Xd/uI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/boJUF/mB/mB/Xd/uI;->LA(Lcom/boJUF/mB/mB/pO/mB/tQ;)Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0x83f

    invoke-direct {p0, p3, v0, p4}, Lcom/boJUF/mB/mB/VD/Ke;->On(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-static {v0}, Lcom/boJUF/mB/mB/mB/uI;->oC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/boJUF/mB/mB/mB/uI;->LA(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    const/16 v0, 0x83b

    const/4 v1, 0x0

    invoke-virtual {p0, p3, v0, v1}, Lcom/boJUF/mB/mB/VD/Ke;->cp(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-static {v0}, Lcom/boJUF/mB/mB/VD/mB/ac;->TP(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0x844

    const/4 v1, 0x0

    invoke-virtual {p0, p3, v0, v1}, Lcom/boJUF/mB/mB/VD/Ke;->cp(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    invoke-static {}, Lcom/boJUF/mB/mB/VD/tQ;->LA()Lcom/boJUF/mB/mB/VD/XQ;

    move-result-object v0

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/boJUF/mB/mB/VD/XQ;->LA(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-static {v1}, Lcom/boJUF/mB/mB/VD/vG;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/VD/vG;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Lcom/boJUF/mB/mB/VD/vG;->LA(Ljava/util/HashMap;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-static {v0}, Lcom/boJUF/mB/mB/mB/uI;->IL(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "2"

    invoke-virtual {p0, p3, v0}, Lcom/boJUF/mB/mB/VD/Ke;->LA(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/boJUF/mB/mB/VD/Ke;->TP:Landroid/os/Handler;

    iget-object v7, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    iget-object v2, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    new-instance v0, Lcom/boJUF/mB/mB/VD/jj;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/boJUF/mB/mB/VD/jj;-><init>(Lcom/boJUF/mB/mB/VD/Ke;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v7, v0}, Lcom/boJUF/mB/mB/mB/uI;->LA(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :cond_f
    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/boJUF/mB/mB/VD/Ke;->LA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1
.end method

.method public final LA(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-static {v0}, Lcom/boJUF/mB/mB/Xd/oC;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/Xd/uI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/boJUF/mB/mB/Xd/uI;->bh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/boJUF/mB/mB/VD/Ke;->cp(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1, p1}, Lcom/boJUF/mB/mB/Xd/uI;->cp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MP"

    invoke-virtual {p0, v1, p2, v0}, Lcom/boJUF/mB/mB/VD/Ke;->LA(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1, p1}, Lcom/boJUF/mB/mB/Xd/uI;->cp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/boJUF/mB/mB/tP/uI;->YM:Ljava/lang/String;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/boJUF/mB/mB/tP/uI;->WW:Ljava/lang/String;

    const-string v0, "MP"

    invoke-virtual {p0, v1, p2, v0}, Lcom/boJUF/mB/mB/VD/Ke;->LA(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final LA(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-static {v0}, Lcom/boJUF/mB/mB/Xd/oC;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/Xd/uI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/boJUF/mB/mB/Xd/uI;->TP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/boJUF/mB/mB/VD/Ke;->cp(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final LA(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "cpoid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "start"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x838

    iget-object v2, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z

    return-void
.end method

.method public final LA(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10

    const/4 v9, -0x1

    const/16 v5, 0x83e

    const/4 v8, 0x1

    const/16 v4, 0x899

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    const-string v0, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "exception"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-static {v4, v0, v1}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z

    const/16 v0, 0x83d

    invoke-direct {p0, v0, p2, v7}, Lcom/boJUF/mB/mB/VD/Ke;->LA(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    invoke-static {p1}, Lcom/boJUF/mB/mB/mB/uI;->cp(Ljava/lang/String;)Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-static {v0}, Lcom/boJUF/mB/mB/mB/uI;->LA(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "exception"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-static {v4, v0, v1}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z

    invoke-direct {p0, v5, p2, v7}, Lcom/boJUF/mB/mB/VD/Ke;->LA(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "exception"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-static {v4, v0, v1}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z

    invoke-direct {p0, v5, p2, v7}, Lcom/boJUF/mB/mB/VD/Ke;->LA(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "resultCode"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "msg"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1}, Lcom/boJUF/mB/mB/mB/uI;->LA(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "exception"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-static {v4, v0, v1}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z

    invoke-direct {p0, v5, p2, v7}, Lcom/boJUF/mB/mB/VD/Ke;->LA(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-ne v1, v8, :cond_9

    const/16 v0, 0x89a

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-static {v0, v1, v3}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z

    const/4 v0, 0x0

    invoke-direct {p0, v2, p2, v0}, Lcom/boJUF/mB/mB/VD/Ke;->cp(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/boJUF/mB/mB/mB/uI;->cp(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-static {v0}, Lcom/boJUF/mB/mB/Xd/oC;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/Xd/uI;

    move-result-object v0

    new-instance v2, Lcom/boJUF/mB/mB/pO/mB/cf;

    invoke-direct {v2}, Lcom/boJUF/mB/mB/pO/mB/cf;-><init>()V

    invoke-virtual {v2, v1}, Lcom/boJUF/mB/mB/pO/mB/cf;->LA(Ljava/lang/String;)V

    const-string v3, "abcsd"

    invoke-virtual {v2, v3}, Lcom/boJUF/mB/mB/pO/mB/cf;->cp(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Lcom/boJUF/mB/mB/pO/mB/cf;->TP(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/boJUF/mB/mB/pO/mB/cf;->LA(J)V

    invoke-virtual {v2, v9}, Lcom/boJUF/mB/mB/pO/mB/cf;->On(I)V

    invoke-virtual {v0, v2}, Lcom/boJUF/mB/mB/Xd/uI;->LA(Lcom/boJUF/mB/mB/pO/mB/cf;)Z

    :cond_5
    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-static {v0}, Lcom/boJUF/mB/mB/Xd/oC;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/Xd/uI;

    move-result-object v0

    invoke-virtual {v0, v1, p2}, Lcom/boJUF/mB/mB/Xd/uI;->LA(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x83f

    invoke-direct {p0, v0, p2, v7}, Lcom/boJUF/mB/mB/VD/Ke;->LA(ILjava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-static {}, Lcom/boJUF/mB/mB/VD/tQ;->LA()Lcom/boJUF/mB/mB/VD/XQ;

    move-result-object v0

    iget-object v2, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/boJUF/mB/mB/VD/XQ;->LA(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "quickFeedback"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v0, 0x0

    invoke-static {v2}, Lcom/boJUF/mB/mB/mB/uI;->cp(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_7
    if-ne v0, v8, :cond_8

    const/16 v0, 0x3eb

    const-string v2, "MP"

    invoke-direct {p0, v0, p2, v2}, Lcom/boJUF/mB/mB/VD/Ke;->LA(ILjava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-static {v1}, Lcom/boJUF/mB/mB/mB/uI;->cp(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/boJUF/mB/mB/VD/tQ;->LA()Lcom/boJUF/mB/mB/VD/XQ;

    move-result-object v0

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-virtual {v0, v7, v1}, Lcom/boJUF/mB/mB/VD/XQ;->LA(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/boJUF/mB/mB/tP/uI;->Jl:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-direct {p0}, Lcom/boJUF/mB/mB/VD/Ke;->On()Z

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->oC:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->oC:Landroid/os/Handler;

    new-instance v1, Lcom/boJUF/mB/mB/VD/XS;

    invoke-direct {v1, p0, p2}, Lcom/boJUF/mB/mB/VD/XS;-><init>(Lcom/boJUF/mB/mB/VD/Ke;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-static {v0}, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/pO/ek/mB/uI;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->LA(I)V

    goto/16 :goto_0

    :cond_9
    if-eqz v0, :cond_a

    const-string v1, "no channel available"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "exception"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-static {v4, v0, v1}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z

    const/16 v0, 0x849

    invoke-direct {p0, v0, p2, v7}, Lcom/boJUF/mB/mB/VD/Ke;->LA(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    if-eqz v0, :cond_b

    const-string v1, "You still have a order not finished"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "exception"

    const-string v2, "4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-static {v4, v0, v1}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z

    const/16 v0, 0x843

    invoke-direct {p0, v0, p2, v7}, Lcom/boJUF/mB/mB/VD/Ke;->LA(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    if-eqz v0, :cond_c

    const-string v1, "API NOT FOUND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "exception"

    const-string v2, "5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-static {v4, v0, v1}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z

    const/16 v0, 0x848

    invoke-direct {p0, v0, p2, v7}, Lcom/boJUF/mB/mB/VD/Ke;->LA(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    if-eqz v0, :cond_d

    const-string v1, "SimCard Not found or Province Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "exception"

    const-string v2, "6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-static {v4, v0, v1}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z

    const/16 v0, 0x84a

    invoke-direct {p0, v0, p2, v7}, Lcom/boJUF/mB/mB/VD/Ke;->LA(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    if-eqz v0, :cond_e

    const-string v1, "Goods Not found"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "exception"

    const-string v2, "7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-static {v4, v0, v1}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z

    const/16 v0, 0x84b

    invoke-direct {p0, v0, p2, v7}, Lcom/boJUF/mB/mB/VD/Ke;->LA(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    if-eqz v0, :cond_f

    const-string v1, "Campaign Not found"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "exception"

    const-string v2, "8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-static {v4, v0, v1}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z

    const/16 v0, 0x84c

    invoke-direct {p0, v0, p2, v7}, Lcom/boJUF/mB/mB/VD/Ke;->LA(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    if-eqz v0, :cond_10

    const-string v1, "Request Info Format Error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "exception"

    const-string v2, "9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-static {v4, v0, v1}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z

    const/16 v0, 0x84d

    invoke-direct {p0, v0, p2, v7}, Lcom/boJUF/mB/mB/VD/Ke;->LA(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "exception"

    const-string v2, "10"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-static {v4, v0, v1}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z

    const/16 v0, 0x7d7

    invoke-direct {p0, v0, p2, v7}, Lcom/boJUF/mB/mB/VD/Ke;->LA(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final cp()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->TP:Landroid/os/Handler;

    return-object v0
.end method

.method public final cp(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    invoke-direct {p0, p2}, Lcom/boJUF/mB/mB/VD/Ke;->LA(I)I

    move-result v0

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-static {v1}, Lcom/boJUF/mB/mB/Xd/oC;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/Xd/uI;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/boJUF/mB/mB/Xd/uI;->na(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Lcom/boJUF/mB/mB/tP/uI;->oG:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-static {v1}, Lcom/boJUF/mB/mB/Xd/oC;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/Xd/uI;

    move-result-object v1

    const-string v2, "MP"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/boJUF/mB/mB/VD/Ke;->oC:Landroid/os/Handler;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/boJUF/mB/mB/VD/Ke;->oC:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    const/16 v2, 0x3e9

    if-eq v0, v2, :cond_3

    invoke-static {p1}, Lcom/boJUF/mB/mB/mB/uI;->cp(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lcom/boJUF/mB/mB/VD/Ke;->LA(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_6

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_4

    :cond_3
    invoke-virtual {v1, p1}, Lcom/boJUF/mB/mB/Xd/uI;->On(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    sget-object v0, Lcom/boJUF/mB/mB/tP/uI;->th:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ke;->cp:Landroid/content/Context;

    invoke-static {v0}, Lcom/boJUF/mB/mB/Xd/oC;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/Xd/uI;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/boJUF/mB/mB/Xd/uI;->na(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Lcom/boJUF/mB/mB/Xd/uI;->IL(Ljava/lang/String;)Lcom/boJUF/mB/mB/pO/mB/tQ;

    move-result-object v2

    const-string v0, ""

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/boJUF/mB/mB/pO/mB/tQ;->TP()Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-virtual {v1, p1}, Lcom/boJUF/mB/mB/Xd/uI;->cp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2, v0}, Lcom/boJUF/mB/mB/VD/Ke;->On(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method
