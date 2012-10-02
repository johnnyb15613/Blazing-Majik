.class public Lcom/google/android/finsky/layout/AutoUpdateSection$AutoUpdateDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "AutoUpdateSection.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/AutoUpdateSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoUpdateDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method private setPreferences(Z)V
    .locals 2
    .parameter "autoUpdateByDefault"

    .prologue
    .line 202
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_UPDATE_BY_DEFAULT:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 203
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->HAS_SEEN_AUTO_UPDATE_DEFAULT:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 204
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 183
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/AutoUpdateSection$AutoUpdateDialog;->setPreferences(Z)V

    .line 184
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 189
    packed-switch p2, :pswitch_data_0

    .line 199
    :goto_0
    return-void

    .line 191
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AutoUpdateSection$AutoUpdateDialog;->dismiss()V

    .line 192
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/AutoUpdateSection$AutoUpdateDialog;->setPreferences(Z)V

    goto :goto_0

    .line 195
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AutoUpdateSection$AutoUpdateDialog;->dismiss()V

    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/AutoUpdateSection$AutoUpdateDialog;->setPreferences(Z)V

    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 172
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AutoUpdateSection$AutoUpdateDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 173
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f07021a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 174
    const v1, 0x7f0700d6

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 175
    const v1, 0x7f0700d7

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 176
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
