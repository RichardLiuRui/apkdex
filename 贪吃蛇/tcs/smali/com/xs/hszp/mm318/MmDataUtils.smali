.class public Lcom/xs/hszp/mm318/MmDataUtils;
.super Ljava/lang/Object;


# static fields
.field private static SHARED_COUNT:Ljava/lang/String;

.field private static SHARED_MMDATA:Ljava/lang/String;

.field private static count:I

.field private static max_count:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/xs/hszp/mm318/MmDataUtils;->count:I

    const/16 v0, 0xc8

    sput v0, Lcom/xs/hszp/mm318/MmDataUtils;->max_count:I

    const-string v0, "MmData"

    sput-object v0, Lcom/xs/hszp/mm318/MmDataUtils;->SHARED_MMDATA:Ljava/lang/String;

    const-string v0, "count"

    sput-object v0, Lcom/xs/hszp/mm318/MmDataUtils;->SHARED_COUNT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCount(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/xs/hszp/mm318/MmDataUtils;->getCounter(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/xs/hszp/mm318/MmDataUtils;->count:I

    sget v1, Lcom/xs/hszp/mm318/MmDataUtils;->max_count:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    sput v0, Lcom/xs/hszp/mm318/MmDataUtils;->count:I

    :cond_0
    sget v0, Lcom/xs/hszp/mm318/MmDataUtils;->count:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/xs/hszp/mm318/MmDataUtils;->saveCounter(Landroid/content/Context;I)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "count--->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/xs/hszp/mm318/MmDataUtils;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    sget v1, Lcom/xs/hszp/mm318/MmDataUtils;->count:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCounter(Landroid/content/Context;)I
    .locals 2

    sget-object v0, Lcom/xs/hszp/mm318/MmDataUtils;->SHARED_MMDATA:Ljava/lang/String;

    sget-object v1, Lcom/xs/hszp/mm318/MmDataUtils;->SHARED_COUNT:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/xs/hszp/mm318/b/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImsi(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static saveCounter(Landroid/content/Context;I)V
    .locals 2

    sget-object v0, Lcom/xs/hszp/mm318/MmDataUtils;->SHARED_MMDATA:Ljava/lang/String;

    sget-object v1, Lcom/xs/hszp/mm318/MmDataUtils;->SHARED_COUNT:Ljava/lang/String;

    invoke-static {p0, v0, v1, p1}, Lcom/xs/hszp/mm318/b/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method
