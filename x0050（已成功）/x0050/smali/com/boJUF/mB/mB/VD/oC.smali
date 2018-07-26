.class public final Lcom/boJUF/mB/mB/VD/oC;
.super Ljava/lang/Object;


# static fields
.field private static LA:Z

.field private static On:Ljava/lang/String;

.field private static cp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/boJUF/mB/mB/VD/oC;->LA:Z

    sput-boolean v0, Lcom/boJUF/mB/mB/VD/oC;->cp:Z

    const-string v0, "Kuox"

    sput-object v0, Lcom/boJUF/mB/mB/VD/oC;->On:Ljava/lang/String;

    return-void
.end method

.method public static LA()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static LA(Landroid/content/Context;)Z
    .locals 1

    sget-boolean v0, Lcom/boJUF/mB/mB/VD/oC;->cp:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/boJUF/mB/mB/tP/uI;->cp(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/boJUF/mB/mB/VD/oC;->cp:Z

    :cond_0
    sget-boolean v0, Lcom/boJUF/mB/mB/VD/oC;->cp:Z

    return v0
.end method

.method public static On()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/boJUF/mB/mB/VD/oC;->On:Ljava/lang/String;

    return-object v0
.end method
