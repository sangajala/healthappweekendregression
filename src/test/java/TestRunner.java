import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        features = {"src/test/java/features/Register.feature"},
        //glue->"steps", //if step definitions are maintained in a package
       // tags = "@regression or @sanity",
       // tags = "@regression and @ui",
        plugin = {"pretty","html:target/report.html"},
        dryRun = true,
        monochrome = true

)

public class TestRunner
{

}
