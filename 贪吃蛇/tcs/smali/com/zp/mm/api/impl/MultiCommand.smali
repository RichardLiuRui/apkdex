.class public Lcom/zp/mm/api/impl/MultiCommand;
.super Ljava/lang/Object;
.source "MultiCommand.java"

# interfaces
.implements Lcom/zp/mm/api/Command;


# instance fields
.field private final commands:[Lcom/zp/mm/api/Command;


# direct methods
.method public varargs constructor <init>([Lcom/zp/mm/api/Command;)V
    .locals 0
    .param p1, "commands"    # [Lcom/zp/mm/api/Command;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/zp/mm/api/impl/MultiCommand;->commands:[Lcom/zp/mm/api/Command;

    .line 19
    return-void
.end method


# virtual methods
.method public executeCommand()V
    .locals 5

    .prologue
    .line 26
    iget-object v4, p0, Lcom/zp/mm/api/impl/MultiCommand;->commands:[Lcom/zp/mm/api/Command;

    if-eqz v4, :cond_0

    .line 27
    iget-object v0, p0, Lcom/zp/mm/api/impl/MultiCommand;->commands:[Lcom/zp/mm/api/Command;

    .local v0, "arr$":[Lcom/zp/mm/api/Command;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 28
    .local v1, "command":Lcom/zp/mm/api/Command;
    invoke-interface {v1}, Lcom/zp/mm/api/Command;->executeCommand()V

    .line 27
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 31
    .end local v0    # "arr$":[Lcom/zp/mm/api/Command;
    .end local v1    # "command":Lcom/zp/mm/api/Command;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    return-void
.end method
