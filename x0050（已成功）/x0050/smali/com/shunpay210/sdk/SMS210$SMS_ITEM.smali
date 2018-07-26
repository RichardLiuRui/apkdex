.class public Lcom/shunpay210/sdk/SMS210$SMS_ITEM;
.super Ljava/lang/Object;
.source "SMS210.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shunpay210/sdk/SMS210;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SMS_ITEM"
.end annotation


# instance fields
.field public content:Ljava/lang/String;

.field public delayTime:I

.field public port:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
