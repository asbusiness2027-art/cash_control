# Cash Control (تطبيق التحكم في النقدية وإغلاق الوردية)

Cash Control is an Arabic-first (RTL) Flutter application designed for shop shift closures, cash control, and real-time syncing between accountants and shop owners.

---

## 🚀 Setting Up Secrets in GitHub Repository

To enable automated release APK builds via GitHub Actions, configure the following secrets in your repository:

1. Open your GitHub repository in a browser.
2. Go to **Settings** > **Secrets and variables** > **Actions**.
3. Click **New repository secret**.
4. Add the following secrets:
   - `SUPABASE_URL`: Your Supabase project URL (e.g., `https://xyz.supabase.co`).
   - `SUPABASE_ANON_KEY`: Your Supabase anonymous API key.

---

## 📥 Downloading the Built APK from GitHub Actions

1. Go to the **Actions** tab in your GitHub repository.
2. Select the latest run of the **Build APK** workflow.
3. Scroll down to the **Artifacts** section at the bottom of the summary page.
4. Click on **cash-control-apk** to download the generated `.zip` file containing `app-release.apk`.

---

## 💻 Running the Project Locally

Run the Flutter project locally with your Supabase credentials passed via `--dart-define`:

```bash
flutter pub get
flutter run --dart-define=SUPABASE_URL=your_supabase_url --dart-define=SUPABASE_ANON_KEY=your_supabase_anon_key
```

### Running Tests and Static Analysis

```bash
flutter analyze
flutter test
```
