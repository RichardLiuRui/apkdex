.class public final Lcom/boJUF/mB/mB/mB/Ke;
.super Ljava/lang/Object;


# instance fields
.field private IL:Ljava/lang/String;

.field private LA:I

.field private On:Ljava/lang/String;

.field private TP:Ljava/lang/String;

.field private cp:Ljava/lang/String;

.field private na:J

.field private oC:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final LA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/boJUF/mB/mB/mB/Ke;->IL:Ljava/lang/String;

    return-object v0
.end method

.method public final LA(I)V
    .locals 0

    iput p1, p0, Lcom/boJUF/mB/mB/mB/Ke;->LA:I

    return-void
.end method

.method public final LA(J)V
    .locals 0

    iput-wide p1, p0, Lcom/boJUF/mB/mB/mB/Ke;->na:J

    return-void
.end method

.method public final LA(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/boJUF/mB/mB/mB/Ke;->cp:Ljava/lang/String;

    return-void
.end method

.method public final On(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/boJUF/mB/mB/mB/Ke;->TP:Ljava/lang/String;

    return-void
.end method

.method public final TP(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/boJUF/mB/mB/mB/Ke;->IL:Ljava/lang/String;

    return-void
.end method

.method public final cp(I)V
    .locals 0

    iput p1, p0, Lcom/boJUF/mB/mB/mB/Ke;->oC:I

    return-void
.end method

.method public final cp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/boJUF/mB/mB/mB/Ke;->On:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MiiSmsBean:: mSmsId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/boJUF/mB/mB/mB/Ke;->LA:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; mSmsPerson"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/boJUF/mB/mB/mB/Ke;->cp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; mSmsContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/boJUF/mB/mB/mB/Ke;->On:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; mSmsPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/boJUF/mB/mB/mB/Ke;->TP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; mSmsDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/boJUF/mB/mB/mB/Ke;->na:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; mSmsType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/boJUF/mB/mB/mB/Ke;->oC:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; mSmsServiceCenter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/boJUF/mB/mB/mB/Ke;->IL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
