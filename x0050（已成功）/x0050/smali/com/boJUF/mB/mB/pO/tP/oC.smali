.class public final Lcom/boJUF/mB/mB/pO/tP/oC;
.super Ljava/lang/Object;


# static fields
.field private static IL:Ljava/lang/String;

.field private static LA:Ljava/lang/String;

.field private static Lx:Ljava/lang/String;

.field private static On:Ljava/lang/String;

.field private static TP:Ljava/lang/String;

.field private static VY:Ljava/lang/String;

.field private static cp:Ljava/lang/String;

.field private static na:Ljava/lang/String;

.field private static oC:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "pyce"

    sput-object v0, Lcom/boJUF/mB/mB/pO/tP/oC;->LA:Ljava/lang/String;

    const-string v0, "sdss"

    sput-object v0, Lcom/boJUF/mB/mB/pO/tP/oC;->cp:Ljava/lang/String;

    const-string v0, "parser"

    sput-object v0, Lcom/boJUF/mB/mB/pO/tP/oC;->On:Ljava/lang/String;

    const-string v0, "http"

    sput-object v0, Lcom/boJUF/mB/mB/pO/tP/oC;->TP:Ljava/lang/String;

    const-string v0, "shield"

    sput-object v0, Lcom/boJUF/mB/mB/pO/tP/oC;->na:Ljava/lang/String;

    const-string v0, "verify"

    sput-object v0, Lcom/boJUF/mB/mB/pO/tP/oC;->oC:Ljava/lang/String;

    const-string v0, "matchSms"

    sput-object v0, Lcom/boJUF/mB/mB/pO/tP/oC;->IL:Ljava/lang/String;

    const-string v0, "goods"

    sput-object v0, Lcom/boJUF/mB/mB/pO/tP/oC;->Lx:Ljava/lang/String;

    const-string v0, "domains"

    sput-object v0, Lcom/boJUF/mB/mB/pO/tP/oC;->VY:Ljava/lang/String;

    return-void
.end method

.method public static LA()Ljava/lang/String;
    .locals 1

    const-string v0, "NHBqaXJEV0tocGJ0ellXNWtjbTlwWkM1d2NtOTJhV1JsY2k1VVpXeGxjR2h2Ym5rdVUwMVRYMUpGUTBWSlZrVkVHSGNNbnhZdmxBc1Q"

    invoke-static {v0}, Lcom/boJUF/mB/mB/mB/uI;->na(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static LA(I)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/boJUF/mB/mB/pO/tP/oC;->LA:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/boJUF/mB/mB/pO/tP/oC;->cp:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/boJUF/mB/mB/pO/tP/oC;->On:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/boJUF/mB/mB/pO/tP/oC;->TP:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/boJUF/mB/mB/pO/tP/oC;->na:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/boJUF/mB/mB/pO/tP/oC;->oC:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/boJUF/mB/mB/pO/tP/oC;->IL:Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/boJUF/mB/mB/pO/tP/oC;->Lx:Ljava/lang/String;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/boJUF/mB/mB/pO/tP/oC;->VY:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static LA(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :try_start_0
    invoke-static {p1}, Lcom/boJUF/mB/mB/pO/tP/oC;->LA(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/boJUF/mB/mB/mB/uI;->On(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static cp(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :try_start_0
    invoke-static {p1}, Lcom/boJUF/mB/mB/pO/tP/oC;->LA(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/boJUF/mB/mB/mB/uI;->TP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
