.class public final Lcom/boJUF/mB/mB/pO/mB/cf;
.super Ljava/lang/Object;


# instance fields
.field private IL:J

.field private LA:I

.field private On:Ljava/lang/String;

.field private TP:I

.field private cp:Ljava/lang/String;

.field private na:I

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

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/mB/cf;->cp:Ljava/lang/String;

    return-object v0
.end method

.method public final LA(I)V
    .locals 0

    iput p1, p0, Lcom/boJUF/mB/mB/pO/mB/cf;->LA:I

    return-void
.end method

.method public final LA(J)V
    .locals 0

    iput-wide p1, p0, Lcom/boJUF/mB/mB/pO/mB/cf;->IL:J

    return-void
.end method

.method public final LA(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/boJUF/mB/mB/pO/mB/cf;->cp:Ljava/lang/String;

    return-void
.end method

.method public final On()I
    .locals 1

    iget v0, p0, Lcom/boJUF/mB/mB/pO/mB/cf;->TP:I

    return v0
.end method

.method public final On(I)V
    .locals 0

    iput p1, p0, Lcom/boJUF/mB/mB/pO/mB/cf;->na:I

    return-void
.end method

.method public final TP()I
    .locals 1

    iget v0, p0, Lcom/boJUF/mB/mB/pO/mB/cf;->na:I

    return v0
.end method

.method public final TP(I)V
    .locals 0

    iput p1, p0, Lcom/boJUF/mB/mB/pO/mB/cf;->oC:I

    return-void
.end method

.method public final cp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/mB/cf;->On:Ljava/lang/String;

    return-object v0
.end method

.method public final cp(I)V
    .locals 0

    iput p1, p0, Lcom/boJUF/mB/mB/pO/mB/cf;->TP:I

    return-void
.end method

.method public final cp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/boJUF/mB/mB/pO/mB/cf;->On:Ljava/lang/String;

    return-void
.end method

.method public final na()I
    .locals 1

    iget v0, p0, Lcom/boJUF/mB/mB/pO/mB/cf;->oC:I

    return v0
.end method

.method public final oC()J
    .locals 2

    iget-wide v0, p0, Lcom/boJUF/mB/mB/pO/mB/cf;->IL:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u3010id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/boJUF/mB/mB/pO/mB/cf;->LA:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmoid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/mB/cf;->cp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nsoid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/mB/cf;->On:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nsubid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nstatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/boJUF/mB/mB/pO/mB/cf;->na:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ntype:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/boJUF/mB/mB/pO/mB/cf;->oC:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ntp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/boJUF/mB/mB/pO/mB/cf;->IL:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u3011"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
