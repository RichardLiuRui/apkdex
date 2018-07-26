.class public final Lcom/boJUF/mB/mB/pO/mB/Vr;
.super Ljava/lang/Object;


# instance fields
.field private IL:Ljava/lang/String;

.field private LA:I

.field private Lx:Ljava/lang/String;

.field private On:I

.field private TP:I

.field private VY:Ljava/lang/String;

.field private cp:Ljava/lang/String;

.field private na:Ljava/lang/String;

.field private oC:Ljava/lang/String;

.field private sj:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final IL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/mB/Vr;->na:Ljava/lang/String;

    return-object v0
.end method

.method public final LA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/mB/Vr;->Lx:Ljava/lang/String;

    return-object v0
.end method

.method public final LA(I)V
    .locals 0

    iput p1, p0, Lcom/boJUF/mB/mB/pO/mB/Vr;->LA:I

    return-void
.end method

.method public final LA(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/boJUF/mB/mB/pO/mB/Vr;->Lx:Ljava/lang/String;

    return-void
.end method

.method public final Lx()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/mB/Vr;->oC:Ljava/lang/String;

    return-object v0
.end method

.method public final On()I
    .locals 1

    iget v0, p0, Lcom/boJUF/mB/mB/pO/mB/Vr;->LA:I

    return v0
.end method

.method public final On(I)V
    .locals 0

    iput p1, p0, Lcom/boJUF/mB/mB/pO/mB/Vr;->TP:I

    return-void
.end method

.method public final On(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/boJUF/mB/mB/pO/mB/Vr;->cp:Ljava/lang/String;

    return-void
.end method

.method public final TP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/mB/Vr;->cp:Ljava/lang/String;

    return-object v0
.end method

.method public final TP(I)V
    .locals 0

    iput p1, p0, Lcom/boJUF/mB/mB/pO/mB/Vr;->sj:I

    return-void
.end method

.method public final TP(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/boJUF/mB/mB/pO/mB/Vr;->na:Ljava/lang/String;

    return-void
.end method

.method public final VY()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/mB/Vr;->IL:Ljava/lang/String;

    return-object v0
.end method

.method public final cp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/mB/Vr;->VY:Ljava/lang/String;

    return-object v0
.end method

.method public final cp(I)V
    .locals 0

    iput p1, p0, Lcom/boJUF/mB/mB/pO/mB/Vr;->On:I

    return-void
.end method

.method public final cp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/boJUF/mB/mB/pO/mB/Vr;->VY:Ljava/lang/String;

    return-void
.end method

.method public final na()I
    .locals 1

    iget v0, p0, Lcom/boJUF/mB/mB/pO/mB/Vr;->On:I

    return v0
.end method

.method public final na(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/boJUF/mB/mB/pO/mB/Vr;->oC:Ljava/lang/String;

    return-void
.end method

.method public final oC()I
    .locals 1

    iget v0, p0, Lcom/boJUF/mB/mB/pO/mB/Vr;->TP:I

    return v0
.end method

.method public final oC(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/boJUF/mB/mB/pO/mB/Vr;->IL:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u3010id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/boJUF/mB/mB/pO/mB/Vr;->LA:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nsoid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/mB/Vr;->cp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nsubid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/boJUF/mB/mB/pO/mB/Vr;->On:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nsendType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/boJUF/mB/mB/pO/mB/Vr;->TP:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nurl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/mB/Vr;->na:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nhttpMethod:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/mB/Vr;->oC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nhttpData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/mB/Vr;->IL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nstatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/boJUF/mB/mB/pO/mB/Vr;->sj:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u3011"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
