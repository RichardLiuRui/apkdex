.class final Lcom/door/frame/c/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:I

.field d:I


# direct methods
.method public constructor <init>(Lcom/door/frame/c/h;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/door/frame/c/i;->a:Ljava/lang/String;

    .line 29
    iput p4, p0, Lcom/door/frame/c/i;->b:I

    .line 31
    iput p6, p0, Lcom/door/frame/c/i;->c:I

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/door/frame/c/i;->d:I

    .line 34
    return-void
.end method
