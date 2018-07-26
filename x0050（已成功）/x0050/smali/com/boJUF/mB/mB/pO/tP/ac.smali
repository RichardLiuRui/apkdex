.class public final Lcom/boJUF/mB/mB/pO/tP/ac;
.super Ljava/lang/Object;


# static fields
.field public static LA:Ljava/lang/String;

.field private static On:Ljava/lang/String;

.field private static TP:Ljava/lang/String;

.field private static cp:Ljava/lang/String;

.field private static na:Ljava/lang/String;

.field private static oC:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "payconfigure"

    sput-object v0, Lcom/boJUF/mB/mB/pO/tP/ac;->cp:Ljava/lang/String;

    const-string v0, "sendsms"

    sput-object v0, Lcom/boJUF/mB/mB/pO/tP/ac;->LA:Ljava/lang/String;

    const-string v0, "msa"

    sput-object v0, Lcom/boJUF/mB/mB/pO/tP/ac;->On:Ljava/lang/String;

    const-string v0, "channelid"

    sput-object v0, Lcom/boJUF/mB/mB/pO/tP/ac;->TP:Ljava/lang/String;

    const-string v0, "pyce"

    sput-object v0, Lcom/boJUF/mB/mB/pO/tP/ac;->na:Ljava/lang/String;

    const-string v0, "sdss"

    sput-object v0, Lcom/boJUF/mB/mB/pO/tP/ac;->oC:Ljava/lang/String;

    return-void
.end method

.method public static LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/pO/mB/uI;
    .locals 8

    new-instance v2, Lcom/boJUF/mB/mB/pO/mB/uI;

    invoke-direct {v2}, Lcom/boJUF/mB/mB/pO/mB/uI;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/boJUF/mB/mB/pO/tP/ac;->On:Ljava/lang/String;

    invoke-static {p0}, Lcom/boJUF/mB/mB/mB/uI;->TP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/boJUF/mB/mB/pO/tP/ac;->TP:Ljava/lang/String;

    invoke-static {p0}, Lcom/boJUF/mB/mB/mB/uI;->na(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/boJUF/mB/mB/pO/tP/ac;->On:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v3, Lcom/boJUF/mB/mB/pO/tP/ac;->TP:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "4136"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0}, Lcom/boJUF/mB/mB/pO/mB/uI;->LA(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/boJUF/mB/mB/pO/mB/uI;->cp(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/boJUF/mB/mB/pO/mB/uI;->On(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/boJUF/mB/mB/pO/mB/uI;->TP(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/boJUF/mB/mB/tP/mB/uI;->LA()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/boJUF/mB/mB/pO/tP/XQ;->LA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v5}, Lcom/boJUF/mB/mB/pO/mB/uI;->na(Ljava/lang/String;)V

    return-object v2
.end method

.method public static LA(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    const-string v1, ""

    :try_start_0
    sget-object v2, Lcom/boJUF/mB/mB/pO/tP/ac;->cp:Ljava/lang/String;

    if-ne p1, v2, :cond_1

    sget-object v1, Lcom/boJUF/mB/mB/pO/tP/ac;->na:Ljava/lang/String;

    :cond_0
    :goto_0
    invoke-static {p0, v1}, Lcom/boJUF/mB/mB/mB/uI;->On(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    sget-object v2, Lcom/boJUF/mB/mB/pO/tP/ac;->LA:Ljava/lang/String;

    if-ne p1, v2, :cond_0

    sget-object v1, Lcom/boJUF/mB/mB/pO/tP/ac;->oC:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
