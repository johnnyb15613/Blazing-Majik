.class Lcom/google/android/finsky/services/RestoreService$RestoreTracker;
.super Ljava/lang/Object;
.source "RestoreService.java"

# interfaces
.implements Lcom/google/android/finsky/installer/InstallerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/services/RestoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreTracker"
.end annotation


# instance fields
.field private final mAccounts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllDownloads:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDownloads:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFailed:I

.field private mSucceeded:I

.field final synthetic this$0:Lcom/google/android/finsky/services/RestoreService;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/services/RestoreService;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 87
    iput-object p1, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->this$0:Lcom/google/android/finsky/services/RestoreService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mAccounts:Ljava/util/Set;

    .line 98
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mDownloads:Ljava/util/Set;

    .line 105
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mAllDownloads:Ljava/util/Set;

    .line 108
    iput v1, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mSucceeded:I

    .line 111
    iput v1, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mFailed:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/services/RestoreService;Lcom/google/android/finsky/services/RestoreService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;-><init>(Lcom/google/android/finsky/services/RestoreService;)V

    return-void
.end method


# virtual methods
.method public finish(Ljava/lang/String;Z)V
    .locals 1
    .parameter "packageName"
    .parameter "success"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mDownloads:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mDownloads:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 152
    if-eqz p2, :cond_1

    .line 153
    iget v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mSucceeded:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mSucceeded:I

    .line 157
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->stopServiceIfDone()V

    .line 159
    :cond_0
    return-void

    .line 155
    :cond_1
    iget v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mFailed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mFailed:I

    goto :goto_0
.end method

.method public finishAccount(Ljava/lang/String;)V
    .locals 1
    .parameter "accountName"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mAccounts:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {p0}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->stopServiceIfDone()V

    .line 128
    return-void
.end method

.method public isAccountInFlight(Ljava/lang/String;)Z
    .locals 1
    .parameter "accountName"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mAccounts:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isTracked(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mAllDownloads:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onInstallPackageEvent(Ljava/lang/String;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V
    .locals 5
    .parameter "packageName"
    .parameter "event"
    .parameter "statusCode"

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 183
    sget-object v0, Lcom/google/android/finsky/services/RestoreService$3;->$SwitchMap$com$google$android$finsky$installer$InstallerListener$InstallerPackageEvent:[I

    invoke-virtual {p2}, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 211
    :goto_0
    :pswitch_0
    return-void

    .line 192
    :pswitch_1
    const-string v0, "Restore package %s download cancelled"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    invoke-virtual {p0, p1, v3}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->finish(Ljava/lang/String;Z)V

    goto :goto_0

    .line 196
    :pswitch_2
    const-string v0, "Restore package %s download error %d"

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    invoke-virtual {p0, p1, v3}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->finish(Ljava/lang/String;Z)V

    goto :goto_0

    .line 200
    :pswitch_3
    const-string v0, "Restore package %s install error %d"

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    invoke-virtual {p0, p1, v3}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->finish(Ljava/lang/String;Z)V

    goto :goto_0

    .line 204
    :pswitch_4
    const-string v0, "Restore package %s install complete"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    invoke-virtual {p0, p1, v4}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->finish(Ljava/lang/String;Z)V

    goto :goto_0

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public start(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mDownloads:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mAllDownloads:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    return-void
.end method

.method public startAccount(Ljava/lang/String;)V
    .locals 1
    .parameter "accountName"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mAccounts:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method public stopServiceIfDone()V
    .locals 4

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mDownloads:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mAccounts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const-string v0, "Restore complete with %d success and %d failed."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mSucceeded:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mFailed:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->this$0:Lcom/google/android/finsky/services/RestoreService;

    iget-object v1, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->this$0:Lcom/google/android/finsky/services/RestoreService;

    #getter for: Lcom/google/android/finsky/services/RestoreService;->mServiceStartId:I
    invoke-static {v1}, Lcom/google/android/finsky/services/RestoreService;->access$100(Lcom/google/android/finsky/services/RestoreService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/services/RestoreService;->stopSelf(I)V

    .line 167
    :cond_0
    return-void
.end method
