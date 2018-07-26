.class public final Lcom/p/s/j/z/c/k;
.super Ljava/lang/Object;
.source "PacketWriter.java"


# instance fields
.field a:[B

.field b:I

.field c:I

.field d:I

.field e:Z

.field f:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/p/s/j/z/c/k;->a:[B

    .line 33
    iput v1, p0, Lcom/p/s/j/z/c/k;->b:I

    .line 34
    iput v1, p0, Lcom/p/s/j/z/c/k;->c:I

    .line 35
    iput v1, p0, Lcom/p/s/j/z/c/k;->d:I

    .line 36
    iput-boolean v2, p0, Lcom/p/s/j/z/c/k;->e:Z

    .line 37
    iput-boolean v2, p0, Lcom/p/s/j/z/c/k;->f:Z

    .line 38
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 45
    new-array v0, p1, [B

    .line 46
    iget-object v1, p0, Lcom/p/s/j/z/c/k;->a:[B

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/p/s/j/z/c/k;->a:[B

    iget v2, p0, Lcom/p/s/j/z/c/k;->c:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    :cond_0
    iput-object v0, p0, Lcom/p/s/j/z/c/k;->a:[B

    .line 49
    iput p1, p0, Lcom/p/s/j/z/c/k;->d:I

    .line 50
    return-void
.end method
