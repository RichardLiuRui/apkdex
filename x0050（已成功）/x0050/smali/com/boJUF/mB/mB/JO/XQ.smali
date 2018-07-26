.class public Lcom/boJUF/mB/mB/JO/XQ;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/boJUF/mB/mB/JO/XQ;-><init>()V

    return-void
.end method

.method public static LA(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "permission is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static LA()Lcom/boJUF/mB/mB/JO/XQ;
    .locals 1

    invoke-static {}, Lcom/boJUF/mB/mB/JO/tQ;->LA()Lcom/boJUF/mB/mB/JO/XQ;

    move-result-object v0

    return-object v0
.end method

.method public static LA(ILandroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    invoke-static {}, Lcom/boJUF/mB/mB/JO/uI;->LA()Lcom/boJUF/mB/mB/JO/uI;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/boJUF/mB/mB/JO/uI;->LA(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/boJUF/mB/mB/mB/uI;->LA(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/boJUF/mB/mB/Xd/oC;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/Xd/uI;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/boJUF/mB/mB/Xd/uI;->On(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
