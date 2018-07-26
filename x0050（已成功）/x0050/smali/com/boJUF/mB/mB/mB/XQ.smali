.class public final Lcom/boJUF/mB/mB/mB/XQ;
.super Ljava/lang/Object;


# instance fields
.field private LA:Ljava/lang/String;

.field private On:Ljava/lang/String;

.field private TP:I

.field private cp:Ljava/lang/String;

.field private na:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final LA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/boJUF/mB/mB/mB/XQ;->cp:Ljava/lang/String;

    return-object v0
.end method

.method public final LA(I)V
    .locals 0

    iput p1, p0, Lcom/boJUF/mB/mB/mB/XQ;->TP:I

    return-void
.end method

.method public final LA(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/boJUF/mB/mB/mB/XQ;->na:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final LA(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/boJUF/mB/mB/mB/XQ;->LA:Ljava/lang/String;

    return-void
.end method

.method public final On()I
    .locals 1

    iget v0, p0, Lcom/boJUF/mB/mB/mB/XQ;->TP:I

    return v0
.end method

.method public final On(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/boJUF/mB/mB/mB/XQ;->On:Ljava/lang/String;

    return-void
.end method

.method public final cp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/boJUF/mB/mB/mB/XQ;->On:Ljava/lang/String;

    return-object v0
.end method

.method public final cp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/boJUF/mB/mB/mB/XQ;->cp:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MiiAppBean:: mAppName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/boJUF/mB/mB/mB/XQ;->LA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; mAppPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/boJUF/mB/mB/mB/XQ;->cp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; mAppVersionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/boJUF/mB/mB/mB/XQ;->On:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; mAppVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/boJUF/mB/mB/mB/XQ;->TP:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; mAppIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/boJUF/mB/mB/mB/XQ;->na:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
