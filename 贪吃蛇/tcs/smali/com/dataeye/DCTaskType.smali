.class public final enum Lcom/dataeye/DCTaskType;
.super Ljava/lang/Enum;


# static fields
.field public static final enum DC_Activity:Lcom/dataeye/DCTaskType;

.field public static final enum DC_BranchLine:Lcom/dataeye/DCTaskType;

.field public static final enum DC_Daily:Lcom/dataeye/DCTaskType;

.field public static final enum DC_GuideLine:Lcom/dataeye/DCTaskType;

.field public static final enum DC_MainLine:Lcom/dataeye/DCTaskType;

.field public static final enum DC_Other:Lcom/dataeye/DCTaskType;

.field private static final synthetic b:[Lcom/dataeye/DCTaskType;


# instance fields
.field a:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/dataeye/DCTaskType;

    const-string v1, "DC_GuideLine"

    const/4 v2, 0x0

    const-string v3, "\u65b0\u624b\u4efb\u52a1"

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/dataeye/DCTaskType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/dataeye/DCTaskType;->DC_GuideLine:Lcom/dataeye/DCTaskType;

    new-instance v0, Lcom/dataeye/DCTaskType;

    const-string v1, "DC_MainLine"

    const-string v2, "\u4e3b\u7ebf\u4efb\u52a1"

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/dataeye/DCTaskType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/dataeye/DCTaskType;->DC_MainLine:Lcom/dataeye/DCTaskType;

    new-instance v0, Lcom/dataeye/DCTaskType;

    const-string v1, "DC_BranchLine"

    const-string v2, "\u652f\u7ebf\u4efb\u52a1"

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/dataeye/DCTaskType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/dataeye/DCTaskType;->DC_BranchLine:Lcom/dataeye/DCTaskType;

    new-instance v0, Lcom/dataeye/DCTaskType;

    const-string v1, "DC_Daily"

    const-string v2, "\u65e5\u5e38\u4efb\u52a1"

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/dataeye/DCTaskType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/dataeye/DCTaskType;->DC_Daily:Lcom/dataeye/DCTaskType;

    new-instance v0, Lcom/dataeye/DCTaskType;

    const-string v1, "DC_Activity"

    const-string v2, "\u6d3b\u52a8\u4efb\u52a1"

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/dataeye/DCTaskType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/dataeye/DCTaskType;->DC_Activity:Lcom/dataeye/DCTaskType;

    new-instance v0, Lcom/dataeye/DCTaskType;

    const-string v1, "DC_Other"

    const/4 v2, 0x6

    const-string v3, "\u5176\u4ed6\u4efb\u52a1"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/dataeye/DCTaskType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/dataeye/DCTaskType;->DC_Other:Lcom/dataeye/DCTaskType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/dataeye/DCTaskType;

    const/4 v1, 0x0

    sget-object v2, Lcom/dataeye/DCTaskType;->DC_GuideLine:Lcom/dataeye/DCTaskType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/dataeye/DCTaskType;->DC_MainLine:Lcom/dataeye/DCTaskType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dataeye/DCTaskType;->DC_BranchLine:Lcom/dataeye/DCTaskType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dataeye/DCTaskType;->DC_Daily:Lcom/dataeye/DCTaskType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dataeye/DCTaskType;->DC_Activity:Lcom/dataeye/DCTaskType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/dataeye/DCTaskType;->DC_Other:Lcom/dataeye/DCTaskType;

    aput-object v1, v0, v8

    sput-object v0, Lcom/dataeye/DCTaskType;->b:[Lcom/dataeye/DCTaskType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "id"    # I
    .param p4, "desc"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/dataeye/DCTaskType;->a:I

    return-void
.end method

.method public static typeId2Type(I)Lcom/dataeye/DCTaskType;
    .locals 1
    .param p0, "typeId"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/dataeye/DCTaskType;->DC_Other:Lcom/dataeye/DCTaskType;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/dataeye/DCTaskType;->DC_GuideLine:Lcom/dataeye/DCTaskType;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/dataeye/DCTaskType;->DC_MainLine:Lcom/dataeye/DCTaskType;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/dataeye/DCTaskType;->DC_BranchLine:Lcom/dataeye/DCTaskType;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/dataeye/DCTaskType;->DC_Daily:Lcom/dataeye/DCTaskType;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/dataeye/DCTaskType;->DC_Activity:Lcom/dataeye/DCTaskType;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/dataeye/DCTaskType;->DC_Other:Lcom/dataeye/DCTaskType;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dataeye/DCTaskType;
    .locals 1

    const-class v0, Lcom/dataeye/DCTaskType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dataeye/DCTaskType;

    return-object v0
.end method

.method public static values()[Lcom/dataeye/DCTaskType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/dataeye/DCTaskType;->b:[Lcom/dataeye/DCTaskType;

    array-length v1, v0

    new-array v2, v1, [Lcom/dataeye/DCTaskType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public val()I
    .locals 1

    iget v0, p0, Lcom/dataeye/DCTaskType;->a:I

    return v0
.end method
