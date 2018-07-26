.class public Lcom/inter/china/fplay/O000000o/O0000O0o;
.super Ljava/lang/Object;
.source "SmsEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public O000000o:Ljava/lang/String;

.field public O00000Oo:Ljava/lang/String;

.field public O00000o:Ljava/lang/String;

.field public O00000o0:I

.field public O00000oO:I

.field public O00000oo:I

.field public O0000O0o:Z

.field public O0000OOo:Ljava/lang/String;

.field public O0000Oo0:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIZ)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O000000o:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000Oo:Ljava/lang/String;

    .line 27
    iput p3, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000o0:I

    .line 28
    iput-object p4, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000o:Ljava/lang/String;

    .line 29
    iput p5, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000oO:I

    .line 30
    iput p6, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000oo:I

    .line 31
    iput-boolean p7, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O0000O0o:Z

    .line 32
    return-void
.end method


# virtual methods
.method public O000000o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000Oo:Ljava/lang/String;

    return-object v0
.end method

.method public O000000o(I)V
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000oo:I

    .line 60
    return-void
.end method

.method public O000000o(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000o:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public O000000o(Z)V
    .locals 0

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O0000O0o:Z

    .line 68
    return-void
.end method

.method public O00000Oo(I)V
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000o0:I

    .line 85
    return-void
.end method

.method public O00000Oo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O000000o:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public O00000o0(I)V
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000oO:I

    .line 90
    return-void
.end method

.method public O00000o0(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000Oo:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmsEntity{port=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O000000o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sms=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000Oo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", portmini="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000o0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sdkType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sendType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000oO:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O00000oo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", FLAG="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/inter/china/fplay/O000000o/O0000O0o;->O0000O0o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
