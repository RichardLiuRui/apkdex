.class public final Lcom/p/s/j/z/c/j;
.super Ljava/lang/Object;
.source "PacketReader.java"


# instance fields
.field a:[B

.field b:I

.field c:I


# direct methods
.method public constructor <init>([BII)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/p/s/j/z/c/j;->a:[B

    .line 25
    iput p2, p0, Lcom/p/s/j/z/c/j;->b:I

    .line 27
    add-int v0, p3, p2

    iput v0, p0, Lcom/p/s/j/z/c/j;->c:I

    .line 28
    return-void
.end method
