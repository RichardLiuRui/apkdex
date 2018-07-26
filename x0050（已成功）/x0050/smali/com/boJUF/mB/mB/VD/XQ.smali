.class public final Lcom/boJUF/mB/mB/VD/XQ;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/boJUF/mB/mB/VD/XQ;-><init>()V

    return-void
.end method

.method private static LA(Lcom/boJUF/mB/mB/mB/Ut;)Ljava/util/HashMap;
    .locals 3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v0, "needMobile"

    invoke-virtual {p0}, Lcom/boJUF/mB/mB/mB/Ut;->bh()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "quickFeedback"

    invoke-virtual {p0}, Lcom/boJUF/mB/mB/mB/Ut;->rC()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "needConfirm"

    invoke-virtual {p0}, Lcom/boJUF/mB/mB/mB/Ut;->gj()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "availablePayType"

    invoke-virtual {p0}, Lcom/boJUF/mB/mB/mB/Ut;->uv()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "smsCat"

    invoke-virtual {p0}, Lcom/boJUF/mB/mB/mB/Ut;->Ab()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "catCmd"

    invoke-virtual {p0}, Lcom/boJUF/mB/mB/mB/Ut;->TP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "showResultUI"

    invoke-virtual {p0}, Lcom/boJUF/mB/mB/mB/Ut;->Hm()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "needUpdateDomain"

    invoke-virtual {p0}, Lcom/boJUF/mB/mB/mB/Ut;->Jl()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "showLoading"

    invoke-virtual {p0}, Lcom/boJUF/mB/mB/mB/Ut;->YM()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "preMobile"

    invoke-virtual {p0}, Lcom/boJUF/mB/mB/mB/Ut;->WW()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "logCount"

    invoke-virtual {p0}, Lcom/boJUF/mB/mB/mB/Ut;->oG()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "yfId"

    invoke-virtual {p0}, Lcom/boJUF/mB/mB/mB/Ut;->na()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "yjId"

    invoke-virtual {p0}, Lcom/boJUF/mB/mB/mB/Ut;->oC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "zzSec"

    invoke-virtual {p0}, Lcom/boJUF/mB/mB/mB/Ut;->VY()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "zzDId"

    invoke-virtual {p0}, Lcom/boJUF/mB/mB/mB/Ut;->IL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "zzAId"

    invoke-virtual {p0}, Lcom/boJUF/mB/mB/mB/Ut;->Lx()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final LA()Lcom/boJUF/mB/mB/mB/Ut;
    .locals 6

    const/16 v5, 0xa

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/boJUF/mB/mB/VD/oC;->LA()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/boJUF/mB/mB/mB/Ut;

    invoke-direct {v0}, Lcom/boJUF/mB/mB/mB/Ut;-><init>()V

    invoke-virtual {v0, v4}, Lcom/boJUF/mB/mB/mB/Ut;->VY(I)V

    invoke-virtual {v0, v3}, Lcom/boJUF/mB/mB/mB/Ut;->oC(I)V

    invoke-virtual {v0, v3}, Lcom/boJUF/mB/mB/mB/Ut;->IL(I)V

    const-string v1, "M0ZCQzVCN0MyOTc3NkRFNzQ4MTdGMzIyRTQzNUM3RjE="

    const-string v2, "PayConfig"

    invoke-static {v1, v2}, Lcom/boJUF/mB/mB/mB/uI;->TP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/boJUF/mB/mB/mB/Ut;->IL(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/boJUF/mB/mB/mB/Ut;->na(I)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/boJUF/mB/mB/mB/Ut;->Lx(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/boJUF/mB/mB/mB/Ut;->Lx(I)V

    invoke-virtual {v0, v3}, Lcom/boJUF/mB/mB/mB/Ut;->sj(I)V

    invoke-virtual {v0, v4}, Lcom/boJUF/mB/mB/mB/Ut;->bh(I)V

    invoke-virtual {v0, v5}, Lcom/boJUF/mB/mB/mB/Ut;->rC(I)V

    const-string v1, "000407"

    invoke-virtual {v0, v1}, Lcom/boJUF/mB/mB/mB/Ut;->cp(Ljava/lang/String;)V

    const-string v1, "{56111839-86A9D26E}"

    invoke-virtual {v0, v1}, Lcom/boJUF/mB/mB/mB/Ut;->On(Ljava/lang/String;)V

    const-string v1, "50027"

    invoke-virtual {v0, v1}, Lcom/boJUF/mB/mB/mB/Ut;->TP(Ljava/lang/String;)V

    const-string v1, "1099"

    invoke-virtual {v0, v1}, Lcom/boJUF/mB/mB/mB/Ut;->na(Ljava/lang/String;)V

    const-string v1, "69da76aebacb11e6b53ff45c89c26d4d"

    invoke-virtual {v0, v1}, Lcom/boJUF/mB/mB/mB/Ut;->oC(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/boJUF/mB/mB/mB/Ut;

    invoke-direct {v0}, Lcom/boJUF/mB/mB/mB/Ut;-><init>()V

    invoke-virtual {v0, v4}, Lcom/boJUF/mB/mB/mB/Ut;->VY(I)V

    invoke-virtual {v0, v3}, Lcom/boJUF/mB/mB/mB/Ut;->oC(I)V

    invoke-virtual {v0, v3}, Lcom/boJUF/mB/mB/mB/Ut;->IL(I)V

    const-string v1, "M0ZCQzVCN0MyOTc3NkRFNzQ4MTdGMzIyRTQzNUM3RjE="

    const-string v2, "PayConfig"

    invoke-static {v1, v2}, Lcom/boJUF/mB/mB/mB/uI;->TP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/boJUF/mB/mB/mB/Ut;->IL(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/boJUF/mB/mB/mB/Ut;->na(I)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/boJUF/mB/mB/mB/Ut;->Lx(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/boJUF/mB/mB/mB/Ut;->Lx(I)V

    invoke-virtual {v0, v3}, Lcom/boJUF/mB/mB/mB/Ut;->sj(I)V

    invoke-virtual {v0, v4}, Lcom/boJUF/mB/mB/mB/Ut;->bh(I)V

    invoke-virtual {v0, v5}, Lcom/boJUF/mB/mB/mB/Ut;->rC(I)V

    const-string v1, "000407"

    invoke-virtual {v0, v1}, Lcom/boJUF/mB/mB/mB/Ut;->cp(Ljava/lang/String;)V

    const-string v1, "{56111839-86A9D26E}"

    invoke-virtual {v0, v1}, Lcom/boJUF/mB/mB/mB/Ut;->On(Ljava/lang/String;)V

    const-string v1, "50027"

    invoke-virtual {v0, v1}, Lcom/boJUF/mB/mB/mB/Ut;->TP(Ljava/lang/String;)V

    const-string v1, "1099"

    invoke-virtual {v0, v1}, Lcom/boJUF/mB/mB/mB/Ut;->na(Ljava/lang/String;)V

    const-string v1, "69da76aebacb11e6b53ff45c89c26d4d"

    invoke-virtual {v0, v1}, Lcom/boJUF/mB/mB/mB/Ut;->oC(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final LA(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    const-string v0, ""

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/boJUF/mB/mB/VD/XQ;->LA(Landroid/content/Context;)Ljava/util/HashMap;

    const-string v2, "[\'MP\']"

    invoke-static {v2}, Lcom/boJUF/mB/mB/mB/uI;->On(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/boJUF/mB/mB/mB/uI;->LA(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1
    if-ge v1, v3, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v4, v3, -0x1

    if-ge v1, v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final LA(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcom/boJUF/mB/mB/Xd/oC;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/Xd/uI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/boJUF/mB/mB/Xd/uI;->LA()Lcom/boJUF/mB/mB/mB/Ut;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1}, Lcom/boJUF/mB/mB/VD/XQ;->LA(Lcom/boJUF/mB/mB/mB/Ut;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0
.end method
